public with sharing class ClassTwo 
{
    public ClassTwo()
    {
        System.debug('ClassTwo');
        testClassMethod();
    }
    //
    public void testClassMethod()
    {
        System.debug('ClassTwo');
    }
}