using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for status
/// </summary>
public class status
{
    public  int timeout = 3000;
    public  string Compile_status;
    public  string Run_status;
    public  string Runtime;
    public  string Run_Error = "No";
    public  string Code = " ";
    public  string FileNameExt;
    public  string MemoryLimit;
    public  string Compile_Error = "No";
    public  string STDIN = "";
    public  string STDOUT = "" ;

}

/*

    error code defination
    
    code: verdict
    
    F404 = File Not Found
    
    C405 = Compile FAILED
    C406 = Compile Error Occured in System
    C407 = Compile Successful
    
    R405 = Run FAILED
    R406 = Run Error Occured in System
    R407 = Run Successful
    
    M404 = Memory Limit not Specified
    M406 = Memory Limit Exceeded 
    M407 = Memory Limit not exceeded
    
    T404 = Time limit not given
    T406 = Time limit Exceeded
    T407 = Time limit not exceeded
    
    I404 = input not Specified
    I407 = input Specified
    
    O404 = No Output
    O407 = Output Successful 
    


*/
