
package servlets;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Note;

/**
 *
 * @author 794974
 */
public class NoteServlet extends HttpServlet {

    
     
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       String path = getServletContext().getRealPath("/WEB-INF/note.txt");
       BufferedReader br = new BufferedReader(new FileReader(new File(path)));
       
       String title = br.readLine();
       
       String content = br.readLine();
      
       br.close();
       
       Note note = new Note(title,content);
       
       request.setAttribute("note", note);
       
        String edit = request.getParameter("edit");
        
        
        
        if(edit == null){
            
          getServletContext().getRequestDispatcher("/WEB-INF/viewnote.jsp").forward(request, response);
        return;  
        }
        else{
            getServletContext().getRequestDispatcher("/WEB-INF/editnote.jsp").forward(request, response);
        return;
        }
        
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String title ="";
        String content ="";
        
        String path = getServletContext().getRealPath("/WEB-INF/note.txt");
        
        title = request.getParameter("title");
        content = request.getParameter("content");
        
        Note noteObj = new Note(title,content);
        request.setAttribute("noteObj", noteObj);
        // Defining the paath of the txt file
        
        
       
        // write to the file
        PrintWriter pw = new PrintWriter(new BufferedWriter(new FileWriter(path,false)));
        pw.write(noteObj.getTitle());
        pw.write('\n');
        pw.write(noteObj.getContent());
        pw.close();
        
        
        if( title == null || title.equals("") || content == null || content.equals("") ){
            //set a flag to let jsp know the validation has been tripped
            request.setAttribute("errorMessage", true);
            request.getRequestDispatcher("/WEB-INF/editnote.jsp").forward(request, response);
            
       
        }
        
        
        
        getServletContext().getRequestDispatcher("/WEB-INF/viewnote.jsp").forward(request, response);
        return;
        
    }

    

}
