const nodemailer = require('nodemailer');
const DiscoveryCall = require('./discoveryModel')

// exports.createDiscoveryCall = async (req, res) => {
//     // console.log("createDiscoveryCall")
//     try {
//         const { firstName, lastName, email, phone, company, referralSource, message } = req.body;
//         console.log("first", req.body)
//         if (!firstName || !lastName || !email || !phone) {
//             return res.status(400).json({ success: false, message: "Missing required fields" });
//         }

//         const newCall = await DiscoveryCall.create({
//             firstName,
//             lastName,
//             email,
//             phone,
//             company,
//             referralSource,
//             message,
//         });

//         return res.status(201).json({ success: true, message: "Discovery call scheduled", data: newCall });
//     } catch (error) {
//         console.error("Error scheduling discovery call:", error);
//         return res.status(500).json({ success: false, message: "Server error" });
//     }
// };

// Configure your Gmail SMTP transporter
const transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
        user: 'softgenic.raj143@gmail.com',         // ✅ Replace with your Gmail
        pass: 'oibmcpfmaweebksk',             // ✅ Use Gmail App Password, not your Gmail password
    },
});

exports.createDiscoveryCall = async (req, res) => {
    try {
        const { firstName, lastName, email, phone, company, referralSource, message } = req.body;

        if (!firstName || !lastName || !email || !phone) {
            return res.status(400).json({ success: false, message: "Missing required fields" });
        }

        const newCall = await DiscoveryCall.create({
            firstName,
            lastName,
            email,
            phone,
            company,
            referralSource,
            message,
        });

        // Compose and send notification email
        const mailOptions = {
            from: 'softgenic.raj143@gmail.com', // ✅ Replace with your Gmail 
            to: 'info@bizzcountsolutions.com',   // ✅ The email where you want to receive the notification
            subject: 'New Discovery Call Scheduled',
            html: `
                <h3>New Discovery Call Request</h3>
                <p><strong>Name:</strong> ${firstName} ${lastName}</p>
                <p><strong>Email:</strong> ${email}</p>
                <p><strong>Phone:</strong> ${phone}</p>
                <p><strong>Company:</strong> ${company || 'N/A'}</p>
                <p><strong>Referral Source:</strong> ${referralSource || 'N/A'}</p>
                <p><strong>Message:</strong> ${message || 'N/A'}</p>
            `,
        };

        await transporter.sendMail(mailOptions);

        return res.status(201).json({
            success: true,
            message: "Discovery call scheduled and email sent",
            data: newCall
        });
    } catch (error) {
        console.error("Error scheduling discovery call:", error);
        return res.status(500).json({ success: false, message: "Server error" });
    }
};


exports.getDiscoveryCalls = async (req, res) => {
    try {
        const calls = await DiscoveryCall.findAll({
            order: [['createdAt', 'DESC']], // Sort by newest first
        });

        return res.status(200).json({ success: true, data: calls });
    } catch (error) {
        console.error("Error fetching discovery calls:", error);
        return res.status(500).json({ success: false, message: "Server error" });
    }
};

