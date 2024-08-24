void main() {
  // nested if

  bool isAdmin = false;
  bool isModerator = false;

  if (isAdmin) {
    print("You have admin privileges");
  } else if (isModerator) {
    print("You have moderator privileges");
  } else {
    print("You have no privileges");
  }
}
