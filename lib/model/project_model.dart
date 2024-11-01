class Project {
  final String name;
  final String description;
  final String features;
  final List<String> images;
  final String link;
  Project(this.name, this.description,this.features ,this.images, this.link);
}

List<Project> projectList = [
  Project(
    '1) AI Voice Changer',
    'Developed a mobile application called "Voice Changer" aimed at altering voices into various character voices. The app features a community platform where users can share their generated voices, interact with others through likes and comments, and even share their creations on social media platforms like WhatsApp, Facebook, and LinkedIn. Additionally, the app offers a blogging feature for users to engage with written content related to voice-changing techniques and tips.',
    
    '• Integrated AI APIs to enable voice modulation with various character voices.\n'
    '• Integrated social media sharing capabilities for seamless sharing of generated voices on platforms like WhatsApp, Facebook, and LinkedIn.\n'
    '• Implemented Likes, Comments, and Share to Community.\n'
    '• Access to informative blogs and articles related to voice-changing techniques.\n'
    '• Integrated Stripe for subscription.',
    
    ['assets/images/coffee.png', 'assets/images/car.png', 'assets/images/alarm.jpg'], // Multiple images added here
    'https://github.com/getSami147/AI-Voice-Changer.git',
  ),
  Project(
    '2) Prestige+ (User)',
    'Developed a user-side platform for a Nigerian client enabling product sales using Prestige Points. The platform includes multiple shops with categorized products, allowing users to browse, add to cart, and place orders. Features like location tracking, push notifications, and QR code, searching functionalities enhance user engagement.',
    
    '• Integrated multiple shops with categorized product listings.\n'
    '• Implemented cart functionality for easy ordering.\n'
    '• Utilized geolocation for current and shop location tracking.\n'
    '• Enabled push notifications for order updates.\n'
    '• Incorporated social features for friend invites and rewards.\n'
    '• Integrated QR code for customer Prestige number security.\n'
    '• Added "Add to Favorite" feature for marking preferred products and shops.\n'
    '• Implemented a search feature for products, shops, and orders, etc.\n'
    '• Applied pagination for improved user experience in browsing large datasets.\n',
    
    ['assets/images/coffee.png', 'assets/images/car.png', 'assets/images/alarm.jpg'], // Multiple images added here
    'https://github.com/getSami147/Prestige-User.git',
  ),
    Project(
    '3) Prestige+ (Vendor Side)',
    'Developed a user-side platform for a Nigerian client enabling product sales using Prestige Points. The platform includes multiple shops with categorized products, allowing users to browse, add to cart, and place orders. Features like location tracking, push notifications, and QR code, searching functionalities enhance user engagement.',
    
    '• Create multiple shops with categorized product listings.\n'
    '• Implemented create update delete functionality for Shop and Product.\n'
    '• Implemented cart functionality for vendor to easy ordering for customer.\n'
    '• Enabled push notifications for order and other updates.\n'
    '• Integrated QR code scanner.\n'
    '• Applied pagination for improved user experience in browsing large datasets.\n'
    '• Implemented monthly and weekly graphs for tracking sales and user engagement.',
    
    ['assets/images/coffee.png', 'assets/images/car.png', 'assets/images/alarm.jpg'], // Multiple images added here
    'https://github.com/getSami147/Prestige-Vendor.git',
  ),
  Project(
      '4) Farmncho (user Side)',
      'Collaborated with a team to develop a fully functional Flutter application aimed at providing users with a seamless experience in browsing and listing products. The app utilized Flutter framework along with various APIs to achieve its functionalities.',
    
    '• Implemented Provider state management and MVVM architecture to ensure efficient state handling and maintainable codebase.\n'
    '• Implemented multi-languages for better accessibility.\n'
    '• Developed "Add to Cart" functionality allowing users to easily select and save desired products for future purchase.\n'
    '• Stripe Payment: Secure payment processing for seamless transactions.',
    
    ['assets/images/coffee.png', 'assets/images/car.png', 'assets/images/alarm.jpg'], // Multiple images added here
      'https://github.com/getSami147/FarmnCho-User-Side.git'),
  Project(
      '5) Farmncho (Vendor Side)',
      'Collaborated with a team to develop a fully functional Flutter application aimed at providing users with a seamless experience in browsing and listing products. The app utilized Flutter framework along with various APIs to achieve its functionalities.',
    
    '• Worked collaboratively with a team to design and develop the product listing application.\n'
    '• Implemented Provider state management and MVVM architecture to ensure efficient state handling and maintainable codebase.\n'
    '• Implemented multi-languages for better accessibility.\n'
    '• Developed "Add to Cart" functionality allowing users to easily select and save desired products for future purchase.\n'
    '• Stripe Payment: Secure payment processing for seamless transactions.',
    
    ['assets/images/coffee.png', 'assets/images/car.png', 'assets/images/alarm.jpg'], // Multiple images added here
      'https://github.com/getSami147/FarmnCho-Vendor.git'),
  Project(
      '6) E-Cash',
      'Developed a mobile app using Firebase to facilitate commission-free cash transactions between users. The app enables users to depoit or withdraw money through user-to-user connections within a 1km radius using Google Maps, eliminating the need for traditional branchless banking services like Easy paisa, Jazz Cash, or U-Paisa.',
    
    '• User Signup and Login (including Google Sign-In).\n'
    '• Email verification and password recovery.\n'
    '• Profile management (view, update, and delete).\n'
    '• Google Maps integration for current location tracking.\n'
    '• Post and retrieve E-cash/Money transfer requests based on proximity (1km radius).\n'
    '• Manage posts (create, update, delete) with geolocation data.\n'
    '• View post details with location on Google Maps.\n'
    '• Communication facilitated through direct calls or WhatsApp.\n'
    '• Secure logout and Google account management with Firebase.\n'
    '• Auto-login if previously authenticated.',
    
    ['assets/images/coffee.png', 'assets/images/car.png', 'assets/images/alarm.jpg'], // Multiple images added here
      'https://github.com/getSami147/E-Cash.git'),
  Project(
      '7) Household',
      'Developed a mobile application called "Household" as the final year project using Flutter and Firebase. The application serves as a platform to connect users with household service providers, streamlining the process of accessing and booking various services.',
    
    '• Utilized Firebase for backend services, including authentication, email verification, and authentication via phone number.\n'
    '• Integrated Firebase Storage to store images uploaded by users and vendors.\n'
    '• Implemented functionality to redirect messaging to WhatsApp and calls to the system call app for seamless communication.\n'
    '• Developed two distinct sides of the application: user side and vendor side, each with its own authentication system managed through email verification.\n'
    '• Service listing and availability management.',
    
    ['assets/images/coffee.png', 'assets/images/car.png', 'assets/images/alarm.jpg'], // Multiple images added here
      'https://github.com/getSami147/HouseHold.git'),
 
 
];
