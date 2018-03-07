import 'dart:html';
import 'dart:math';

void main() {
  // Look for the ID button. If clicked run getSum function
  querySelector("#button").onClick.listen(getSum);
}

// This will be passed a MouseEvent because of how it is called
void getSum(MouseEvent event){
  // Parse num1 from html
  int num1 = int.parse(
      (
          querySelector("#num1") as InputElement
      ).value
  );

  // Parse num2 from html
  int num2 = int.parse(
      (
          querySelector("#num2") as InputElement
      ).value
  );

  // Add num1 and num2 then convert to string
  var sum = (num1 + num2).toString();

  querySelector("#sum").text = "$num1 + $num2 = $sum";
}