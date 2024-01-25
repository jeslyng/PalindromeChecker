public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  String lines2[] = new String[lines.length];
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    lines2[i] = noCapitals(lines[i]);
    lines2[i] = noSpaces(lines2[i]);
    lines2[i] = onlyLetters(lines2[i]);
    if (palindrome(lines2[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if (reverse(word).equals(word))
    return true;
  return false;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
public String noSpaces(String sWord){
  String s = "";
  for(int i=0; i<sWord.length(); i++)
    if(sWord.substring(i,i+1).equals(" ")==false)
      s=s+sWord.substring(i,i+1);
  return s;
}
public String onlyLetters(String sString){
  String a = "";
  for(int i = 0; i<sString.length(); i++)
    if(Character.isLetter(sString.charAt(i)))
      a=a+sString.charAt(i);
  return a;
}
public String reverse(String str)
{
  String s = "";
  for (int i=str.length()-1; i>=0; i--)
    s = s+str.substring(i, i+1);
  return s;
}
