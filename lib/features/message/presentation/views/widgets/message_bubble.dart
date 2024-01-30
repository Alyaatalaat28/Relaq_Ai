class MessageBubble extends StatelessWidget {
  final String sender;
  final String message;

  MessageBubble({required this.sender, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Align(
        alignment: sender == 'user' ? Alignment.topRight : Alignment.topLeft,
        child: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: sender == 'user' ? Colors.blue : Colors.green,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Text(
            message,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}