
import '../model/user_model.dart';
class UserController {
  List<User> getUsers() {
    return [
      User(
        name: 'Bill Gates',
        status: 'What I\'m doing here?',
        email: 'bill@example.com',
        phone: '123-456-7890',
        bio: 'Bio of Bill Gates',
        address: '1234 Main St, Springfield, USA',
        profilePicture: 'assets/images/bill.webp',
      ),

       User(
        name: 'Mark Zuckerberg',
        status: 'Connecting people',
        email: 'mark@example.com',
        phone: '123-456-7890',
        bio: 'Bio of Mark Zuckerberg',
        address: '1234 Main St, Palo Alto, USA',
        profilePicture: 'assets/images/Mark.jpg',
      ),

       User(
        name: 'Elon Musk',
        status: 'Making life multiplanetary',
        email: 'elon@example.com',
        phone: '123-456-7890',
        bio: 'Bio of Elon Musk',
        address: '1234 Mars Ave, Mars',
        profilePicture: 'assets/images/Elon.webp', 
      ),
      User(
        name: 'Cristiano Ronaldo',
        status: 'Professional Footballer',
        email: 'ronaldo@example.com',
        phone: '123-456-7890',
        bio: 'Bio of Cristiano Ronaldo',
        address: 'Avenida da Liberdade, Lisbon, Portugal',
        profilePicture: 'assets/images/Cristiano.webp', 
      ),
       User(
        name: 'Lionel Messi',
        status: 'Professional Footballer',
        email: 'lionel@example.com',
        phone: '123-456-7890',
        bio: 'Bio of Lionel Messi',
        address: 'Avenida Diagonal, Barcelona, Spain',
        profilePicture: 'assets/images/lionelmessi.jpg', 
      ),
      User(
        name: 'John Cena',
        status: 'Professional Wrestler and Actor',
        email: 'john@example.com',
        phone: '123-456-7890',
        bio: 'Bio of John Cena',
        address: '123 Wrestler Ave, WWE Universe',
        profilePicture: 'assets/images/john.jpg', 
      ),
        User(
        name: 'Angelina Jolie',
        status: 'Award-winning Actress and Humanitarian',
        email: 'angelina@example.com',
        phone: '123-456-7890',
        bio: 'Bio of Angelina Jolie',
        address: '123 Movie Star Lane, Hollywood, USA',
        profilePicture: 'assets/images/Angelinajolie.jpg',
      ),
    ];
  }
}
