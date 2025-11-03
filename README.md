# Eden Lift - Operation Abundance Eden Project

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

## 🌱 Overview

Eden Lift is a comprehensive web platform designed to support the Operation Abundance Eden Project. The platform provides tools for investor relations, document management, digital signatures, and API access to support sustainable development and environmental conservation initiatives.

## ✨ Features

- **🏠 Home Portal**: Central hub with project overview and quick access to all features
- **💼 Investor Portal**: Investment opportunities, portfolio tracking, and impact reporting
- **📚 Documentation**: Comprehensive guides and technical documentation
- **✍️ Digital Signatures**: Secure, blockchain-verified document signing
- **🔌 RESTful API**: Programmatic access to platform functionality

## 🚀 Quick Start

### View the Website Locally

1. Clone the repository:
   ```bash
   git clone https://github.com/CramerConsultingGroup/edenlift.git
   cd edenlift
   ```

2. Open `index.html` in your web browser:
   ```bash
   # On macOS
   open index.html
   
   # On Linux
   xdg-open index.html
   
   # On Windows
   start index.html
   ```

3. Alternatively, use a local web server:
   ```bash
   # Using Python 3
   python -m http.server 8000
   
   # Using Node.js (http-server)
   npx http-server
   
   # Using PHP
   php -S localhost:8000
   ```

   Then navigate to `http://localhost:8000` in your browser.

## 📂 Project Structure

```
edenlift/
├── index.html              # Main landing page
├── assets/
│   └── css/
│       └── style.css       # Main stylesheet (copper theme)
├── investor/
│   └── index.html          # Investor portal
├── docs/
│   └── index.html          # Documentation hub
├── signatures/
│   └── index.html          # Digital signature platform
├── api/
│   └── index.html          # API documentation
├── LICENSE                 # MIT License
├── README.md              # This file
└── .gitignore             # Git ignore rules
```

## 🎨 Design

The platform uses a copper-themed design reflecting warmth, sustainability, and abundance:
- **Primary Color**: Copper (#b87333)
- **Typography**: Clean, modern sans-serif
- **Layout**: Responsive grid system
- **Navigation**: Sticky copper navbar with smooth transitions

## 🌐 Navigation

The platform includes five main sections accessible via the navigation bar:

1. **Home** (`/`) - Main landing page with project overview
2. **Investor** (`/investor/`) - Investment portal and opportunities
3. **Docs** (`/docs/`) - Comprehensive documentation
4. **Signatures** (`/signatures/`) - Digital document signing
5. **API** (`/api/`) - API documentation and integration guides

All pages are fully functional and load correctly.

## 🔧 Technology Stack

- **Frontend**: HTML5, CSS3 (no frameworks required for core functionality)
- **Design**: Custom copper-themed responsive CSS
- **Structure**: Static site (easily deployable to GitHub Pages, Netlify, Vercel, etc.)

## 📱 Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## 🚀 Deployment

### GitHub Pages

1. Go to repository Settings → Pages
2. Select source branch (main)
3. Select root folder
4. Click Save
5. Site will be available at: `https://cramerconsultinggroup.github.io/edenlift/`

### Netlify/Vercel

1. Connect your GitHub repository
2. Set build command: (none needed for static site)
3. Set publish directory: `/` (root)
4. Deploy!

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Cramer Consulting Group
- Operation Abundance Eden Project contributors
- All supporters of sustainable development initiatives

## 📧 Contact

For questions, support, or partnership inquiries:
- **Email**: info@edenlift.org
- **Repository**: https://github.com/CramerConsultingGroup/edenlift
- **Issues**: https://github.com/CramerConsultingGroup/edenlift/issues

---

Built with 💚 for a sustainable future
