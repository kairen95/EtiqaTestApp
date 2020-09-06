
class Member{
  final String name;
  // final List<String> _desciptions;
  final String description;

  Member(this.name,this.description);


  // static List<Member> fetchAll(){
  //   return [
  //     Member('Tay Kai Ren', ['Q2-2019', 'Q3-2019', 'Q4-2019']),
  //     Member('Tang Chee Hong', ['Q2-2019', 'Q3-2019', 'Q4-2019']),
  //     Member('Ang Yuan Ling', ['Q2-2019', 'Q3-2019', 'Q4-2019']),
  //     Member('Wong Yu Shuo', ['Q2-2019', 'Q3-2019', 'Q4-2019']),
  //   ];
  // }

    static List<Member> fetchAll(){
    return [
      Member('Tay Kai Ren', 'User A'),
      Member('Tang Chee Hong', 'User B'),
      Member('Ang Yuan Ling', 'User C'),
      Member('Wong Yu Shuo', 'User D'),
    ];
  }

}