// import 'package:service_booking_app/models/services.dart';

// import '../models/category.dart';
// import '../models/vendor.dart';

// class ApiService {
//   static List<Category> getCategories() {
//     return [
//       Category(id: 1, name: 'Kitchen\'s Tools'),
//       Category(id: 2, name: 'Electrical Items'),
//       Category(id: 3, name: 'Furniture'),
//     ];
//   }

//   static List<Service> getServices() {
//     return [
//       Service(
//           id: 1,
//           categoryId: 1,
//           name: 'The cooking spoon',
//           price: 24,
//           availability: 'today'),
//       Service(
//           id: 2,
//           categoryId: 1,
//           name: 'box grater',
//           price: 30,
//           availability: 'next 3 days'),
//       Service(
//           id: 3,
//           categoryId: 1,
//           name: 'Salad Spinner',
//           price: 90,
//           availability: 'next 3 days'),
//       Service(
//           id: 4,
//           categoryId: 1,
//           name: 'Mixing Bowls',
//           price: 65,
//           availability: 'next 3 days'),
//       Service(
//           id: 5,
//           categoryId: 2,
//           name: 'Television',
//           price: 300,
//           availability: 'next 3 days'),
//       Service(
//           id: 6,
//           categoryId: 2,
//           name: 'fan',
//           price: 180,
//           availability: 'next 3 days'),
//       Service(
//           id: 7,
//           categoryId: 2,
//           name: 'Microwave',
//           price: 110,
//           availability: 'next 3 days'),
//       Service(
//           id: 8,
//           categoryId: 2,
//           name: 'laptop',
//           price: 500,
//           availability: 'next 3 days'),
//       Service(
//           id: 9,
//           categoryId: 3,
//           name: 'tabel',
//           price: 60,
//           availability: 'next 3 days'),
//       Service(
//           id: 10,
//           categoryId: 3,
//           name: 'bed',
//           price: 90,
//           availability: 'next 3 days'),
//       Service(
//           id: 11,
//           categoryId: 3,
//           name: 'chair',
//           price: 10,
//           availability: 'next 3 days'),
//       Service(
//           id: 12,
//           categoryId: 3,
//           name: 'cupboards',
//           price: 450,
//           availability: 'next 3 days'),
//     ];
//   }

//   static List<Vendor> getVendors() {
//     return [
//       Vendor(
//         id: 1,
//         name: 'JB Prince Company',
//         category: 'Kitchen\'s Tools',
//         image: 'url_to_image',
//         description:
//             'JB Prince is a provider of the world\'s finest chef tools and equipment for professionals in the culinary industry. We have only quality products.',
//         services: [
//           Service(
//               id: 1,
//               categoryId: 1,
//               name: 'The cooking spoon',
//               price: 24,
//               availability: 'today'),
//           Service(
//               id: 2,
//               categoryId: 1,
//               name: 'box grater',
//               price: 30,
//               availability: 'next 3 days'),
//           Service(
//               id: 3,
//               categoryId: 1,
//               name: 'Salad Spinner',
//               price: 90,
//               availability: 'next 3 days'),
//           Service(
//               id: 4,
//               categoryId: 1,
//               name: 'Mixing Bowls',
//               price: 65,
//               availability: 'next 3 days'),
//         ],
//         photos: ['url_to_photo1', 'url_to_photo2'],
//         reviews: [
//           Review(user: 'Omar', rating: 4, comment: 'It is Good tools'),
//           Review(user: 'Mohammed', rating: 5, comment: 'Excellent service'),
//         ],
//         availabilitySlots: {
//           'calendar': ['2024-06-01', '2024-06-02'],
//           'timeSlots': ['10:00 AM', '11:00 AM'],
//         },
//       ),
//       Vendor(
//         id: 2,
//         name: 'Samsung Company',
//         category: 'Electrical Items',
//         image: 'url_to_image',
//         description:
//             'Samsung Electronics is a multinational electronics and information technology company headquartered in Suwon and the flagship company of the Samsung Group.',
//         services: [
//           Service(
//               id: 5,
//               categoryId: 2,
//               name: 'Television',
//               price: 300,
//               availability: 'next 3 days'),
//           Service(
//               id: 6,
//               categoryId: 2,
//               name: 'fan',
//               price: 180,
//               availability: 'next 3 days'),
//           Service(
//               id: 7,
//               categoryId: 2,
//               name: 'Microwave',
//               price: 110,
//               availability: 'next 3 days'),
//           Service(
//               id: 8,
//               categoryId: 2,
//               name: 'laptop',
//               price: 500,
//               availability: 'next 3 days'),
//         ],
//         photos: ['url_to_photo1', 'url_to_photo2'],
//         reviews: [
//           Review(user: 'Khaled', rating: 4, comment: 'It is Good tools'),
//           Review(user: 'Ahmad', rating: 5, comment: 'Excellent service'),
//         ],
//         availabilitySlots: {
//           'calendar': ['2024-06-01', '2024-06-02'],
//           'timeSlots': ['10:00 AM', '11:00 AM'],
//         },
//       ),
//       Vendor(
//         id: 3,
//         name: 'Williams-Sonoma',
//         category: 'Furniture',
//         image: 'url_to_image',
//         description:
//             ' Williams-Sonoma, Inc. is one of the United States\' largest e-commerce retailers with some of the best known and most beloved brands in home furnishings.',
//         services: [
//           Service(
//               id: 9,
//               categoryId: 3,
//               name: 'tabel',
//               price: 60,
//               availability: 'next 3 days'),
//           Service(
//               id: 10,
//               categoryId: 3,
//               name: 'bed',
//               price: 90,
//               availability: 'next 3 days'),
//           Service(
//               id: 11,
//               categoryId: 3,
//               name: 'chair',
//               price: 10,
//               availability: 'next 3 days'),
//           Service(
//               id: 12,
//               categoryId: 3,
//               name: 'cupboards',
//               price: 450,
//               availability: 'next 3 days'),
//         ],
//         photos: ['url_to_photo1', 'url_to_photo2'],
//         reviews: [
//           Review(user: 'Hamed', rating: 4, comment: 'It is Good tools'),
//           Review(user: 'Ibrahim', rating: 5, comment: 'Excellent service'),
//         ],
//         availabilitySlots: {
//           'calendar': ['2024-06-01', '2024-06-02'],
//           'timeSlots': ['10:00 AM', '11:00 AM'],
//         },
//       ),
//     ];
//   }
// }
