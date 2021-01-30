public void setup()
{
String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(onlyLetters(noCapitals(lines[i])))==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String sWord)
{
    if(sWord.equals(reverse(sWord)))
    return true;
  else
    return false;
}


public String reverse(String str)
{
  String result = new String();
  for(int i = str.length()-1; i>=0; i--)
    result=result+str.charAt(i);
  return result;
}
public String noCapitals(String sWord){
  return(sWord.toLowerCase());
}
public String onlyLetters(String sString){
    String s = "";
  for (int i = 0 ; i < sString.length(); i++) {
    if(Character.isLetter(sString.charAt(i)))  {
      s += sString.charAt(i);
    }
  }
  return s;
}

