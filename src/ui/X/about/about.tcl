#############################################################################
# Generated by PAGE version 4.3.1
# in conjunction with Tcl version 8.6
#    Sep 23, 2014 05:00:19 PM


set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #d9d9d9
set vTcl(active_fg) #111111
#################################
#LIBRARY PROCEDURES
#


if {[info exists vTcl(sourcing)]} {

proc vTcl:project:info {} {
    set base .top36
    namespace eval ::widgets::$base {
        set set,origin 1
        set set,size 1
        set runvisible 1
    }
    namespace eval ::widgets_bindings {
        set tagslist _TopLevel
    }
    namespace eval ::vTcl::modules::main {
        set procs {
        }
        set compounds {
        }
        set projectType single
    }
}
}

#################################
# USER DEFINED PROCEDURES
#

#################################
# GENERATED GUI PROCEDURES
#

proc vTclWindow. {base} {
    if {$base == ""} {
        set base .
    }
    ###################
    # CREATING WIDGETS
    ###################
    wm focusmodel $top passive
    wm geometry $top 200x200+100+100; update
    wm maxsize $top 2564 1006
    wm minsize $top 116 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm withdraw $top
    wm title $top "page"
    bindtags $top "$top Page all"
    ###################
    # SETTING GEOMETRY
    ###################

    vTcl:FireEvent $base <<Ready>>
}

proc vTclWindow.top36 {base} {
    if {$base == ""} {
        set base .top36
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl:toplevel $top -class Toplevel \
        -menu "$top.m36" -background {#d9d9d9} -highlightbackground {#d9d9d9} \
        -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 250x250+507+179; update
    wm maxsize $top 250 250
    wm minsize $top 250 250
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "About Stage7"
    vTcl:DefineAlias "$top" "About_Stage7" vTcl:Toplevel:WidgetProc "" 1
    bindtags $top "$top Toplevel all _TopLevel"
    ttk::style configure TLabel -background #d9d9d9
    ttk::style configure TLabel -foreground #000000
    ttk::style configure TLabel -font TkDefaultFont
    ttk::label $top.tLa41 \
        -background {#d9d9d9} -foreground {#000000} -relief flat \
        -justify center \
        -text {This is one of the projects from 
Digital Survival. 
For more information or to volunteer
please visit: 
http://www.digitalsurvival.us/stage7} 
    vTcl:DefineAlias "$top.tLa41" "About_Text" vTcl:WidgetProc "About_Stage7" 1
    ttk::label $top.tLa42 \
        -background {#d9d9d9} -foreground {#000000} -relief flat \
        -text {Stage7 Installer GUI} 
    vTcl:DefineAlias "$top.tLa42" "About_Title" vTcl:WidgetProc "About_Stage7" 1
    ttk::label $top.tLa43 \
        -background {#d9d9d9} -foreground {#000000} -relief flat \
        -text Version: 
    vTcl:DefineAlias "$top.tLa43" "About_Ver" vTcl:WidgetProc "About_Stage7" 1
    ttk::label $top.tLa45 \
        -background {#d9d9d9} -foreground {#000000} -relief flat -text Number 
    vTcl:DefineAlias "$top.tLa45" "About_VNumber" vTcl:WidgetProc "About_Stage7" 1
    menu $top.m36 \
        -activebackground {#d9d9d9} -activeforeground black \
        -background {#d9d9d9} -font TkMenuFont -foreground {#000000} \
        -tearoff 0 
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.tLa41 \
        -in $top -x 10 -y 60 -width 229 -height 79 -anchor nw \
        -bordermode ignore 
    place $top.tLa42 \
        -in $top -x 70 -y 20 -width 105 -height 19 -anchor nw \
        -bordermode ignore 
    place $top.tLa43 \
        -in $top -x 50 -y 40 -width 46 -height 24 -anchor nw \
        -bordermode ignore 
    place $top.tLa45 \
        -in $top -x 101 -y 42 -width 48 -height 19 -anchor nw \
        -bordermode ignore 

    vTcl:FireEvent $base <<Ready>>
}

#############################################################################
## Binding tag:  _TopLevel

bind "_TopLevel" <<Create>> {
    if {![info exists _topcount]} {set _topcount 0}; incr _topcount
}
bind "_TopLevel" <<DeleteWindow>> {
    if {[set ::%W::_modal]} {
                vTcl:Toplevel:WidgetProc %W endmodal
            } else {
                destroy %W; if {$_topcount == 0} {exit}
            }
}
bind "_TopLevel" <Destroy> {
    if {[winfo toplevel %W] == "%W"} {incr _topcount -1}
}

Window show .
Window show .top36
