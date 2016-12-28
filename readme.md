# JSP2Thmyeleaf Migration Sample Project - stage 0

## Introduction

This guide shows the process for converting a JSP project to Thymeleaf using the JSP2Thymeleaf
tool set and libraries. JSP2Thymeleaf provides both tools to convert JSP templates into Thymeleaf ones,
and libraries to ease the mismatch in features between the two worlds.

This project is done in stages using GIT. Each stage is checked in with a tag STEP-n with n starting
at 0. By performing:

    git checkout stage-0

the file system is reset to the specified stage of migration. You can view diffs to
see what has occurred in each stage.

## Preparation 

So, you've been using JSP's since, forever, and they've served you well (pun intended).

However, lately, you've been wondering if it might not be, er,  Thyme for a change?

Spring boot is fantastic at getting config under control and for getting projects up
and running, but it doesn't exactly welcome JSP views with open arms. Instead, you
end up feeling like the creepy older third cousin at the Christmas meal that everyone
tolerates, but no one would miss. Don't worry - there's a new kid on the block: Thymeleaf.

Why? Thymeleaf.

It's shiny. It's new. It doesn't involve compiling code at runtime in a production environment.

If done right, designers can view templates that will render without needing a server.
Plus, the folks at Spring have blessed it with simple setup and auto configuration in Spring applications.

So, how do we move our pages from JSP's to Thymeleaf? To answer this question, lets ask and answer some more: 

* Do we have to migrate all the pages at once in a big bang conversion?

  No. With the spring-thymeleaf-jsp project you can have both operating at the same time. 
  It allows you to convert a single page to Thymeleaf and the rest of the JSPs will work just fine. 
 
* Are JSP's and Thymeleaf functionally equivalent? 

  Not quite. They are very similar but slightly different. JSP's allows tags within tags and 
  injection of java directly into templates. Thymeleaf does not.

  Fortunately, they are both extensible, which allows us to make almost all 
  automated migrations possible and approach the changes in a staged manner. 

  These extensions for the JSP and Thymeleaf allow you to:

   # include Thymeleaf fragments like headers and footers into existing JSP pages, by using 
     a custom taglib. 

   # convert JSP cout tags inside other tags and choose tags into functionally equivalent
     Thymeleaf blocks using a new ThyeJSPCompatability dialect.

* I have java embedded in my JSP's. Can you help?
  
  It's ok. We're in a safe space. There's no need to feel bad.
  After all, I'm sure all of us have been tempted to insert java directly into
  a template because we could... but most of us didn't.
 
  WHAT WERE YOU THINKING?

  Sorry, but if you have java inserted into your templates it will be detected
  by the JSP2Thymeleaf converter and commented out for you to... attend to.
  
  Seriously, though - consider using Thymeleaf's custom processors to help you, 
  as you should have used JSP taglibs and custom tags in the JSP world.

  I'll paraphrase Yoda, when I say that inserting java into JSPs is "...faster,
  more seductive, but once you head down that pathway forever will it dominate
  you" 

* How do we stage a migration?

  Great question! OK - here are the steps. (We'll go through them in detail in 
  each step.)
 
  # Locate any embedded java code in JSP's and start reading up on Thymeleaf Custom
    Dialects if you do.
  
  # Do an audit of any custom taglibs (other than JSTL) you're using. If you have any
    you'll need to work out the equivalent Thymeleaf construct. Once you've figured
    out what needs to be done by the converter you can specify that in a custom
    taglib converter in groovy.

    You can also choose to defer that by registering a commenting converter which
    simply comments out any things it doesn't understand.

  # Start work on a fragment, like a header or footer. That way your new templates
    and JSPs
