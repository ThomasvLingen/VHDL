<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_52" />
        <signal name="XLXN_54" />
        <signal name="XLXN_56" />
        <signal name="XLXN_72" />
        <signal name="XLXN_35" />
        <signal name="XLXN_74" />
        <signal name="XLXN_36" />
        <signal name="XLXN_76" />
        <signal name="XLXN_37" />
        <signal name="XLXN_39">
            <attr value="P11" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="XLXN_40">
            <attr value="G3" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="XLXN_41">
            <attr value="L3" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="XLXN_42">
            <attr value="F3" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="XLXN_43">
            <attr value="K3" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="XLXN_44">
            <attr value="E2" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="XLXN_45">
            <attr value="B4" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="XLXN_46">
            <attr value="N3" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="XLXN_47">
            <attr value="M5" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="XLXN_48">
            <attr value="M11" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="XLXN_49">
            <attr value="P7" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="XLXN_50">
            <attr value="P6" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="XLXN_51">
            <attr value="N5" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="XLXN_92">
            <attr value="A7" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="XLXN_93">
            <attr value="G1" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <port polarity="Input" name="XLXN_39" />
        <port polarity="Input" name="XLXN_40" />
        <port polarity="Input" name="XLXN_41" />
        <port polarity="Input" name="XLXN_42" />
        <port polarity="Input" name="XLXN_43" />
        <port polarity="Input" name="XLXN_44" />
        <port polarity="Input" name="XLXN_45" />
        <port polarity="Input" name="XLXN_46" />
        <port polarity="Output" name="XLXN_47" />
        <port polarity="Output" name="XLXN_48" />
        <port polarity="Output" name="XLXN_49" />
        <port polarity="Output" name="XLXN_50" />
        <port polarity="Output" name="XLXN_51" />
        <port polarity="Input" name="XLXN_92" />
        <port polarity="Output" name="XLXN_93" />
        <blockdef name="FULLADDER_model">
            <timestamp>2015-2-2T21:13:42</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="FULLADDER_model" name="XLXI_13">
            <blockpin signalname="XLXN_39" name="A" />
            <blockpin signalname="XLXN_40" name="B" />
            <blockpin signalname="XLXN_92" name="Ci" />
            <blockpin signalname="XLXN_47" name="S" />
            <blockpin signalname="XLXN_35" name="C" />
        </block>
        <block symbolname="FULLADDER_model" name="XLXI_12">
            <blockpin signalname="XLXN_41" name="A" />
            <blockpin signalname="XLXN_42" name="B" />
            <blockpin signalname="XLXN_35" name="Ci" />
            <blockpin signalname="XLXN_48" name="S" />
            <blockpin signalname="XLXN_36" name="C" />
        </block>
        <block symbolname="FULLADDER_model" name="XLXI_14">
            <blockpin signalname="XLXN_43" name="A" />
            <blockpin signalname="XLXN_44" name="B" />
            <blockpin signalname="XLXN_36" name="Ci" />
            <blockpin signalname="XLXN_49" name="S" />
            <blockpin signalname="XLXN_37" name="C" />
        </block>
        <block symbolname="FULLADDER_model" name="XLXI_15">
            <blockpin signalname="XLXN_45" name="A" />
            <blockpin signalname="XLXN_46" name="B" />
            <blockpin signalname="XLXN_37" name="Ci" />
            <blockpin signalname="XLXN_50" name="S" />
            <blockpin signalname="XLXN_51" name="C" />
        </block>
        <block symbolname="gnd" name="XLXI_32">
            <blockpin signalname="XLXN_93" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="320" y="304" name="XLXI_13" orien="R0">
        </instance>
        <instance x="320" y="592" name="XLXI_12" orien="R0">
        </instance>
        <instance x="320" y="880" name="XLXI_14" orien="R0">
        </instance>
        <instance x="320" y="1168" name="XLXI_15" orien="R0">
        </instance>
        <branch name="XLXN_35">
            <wire x2="128" y1="320" y2="560" x1="128" />
            <wire x2="320" y1="560" y2="560" x1="128" />
            <wire x2="784" y1="320" y2="320" x1="128" />
            <wire x2="784" y1="272" y2="272" x1="704" />
            <wire x2="784" y1="272" y2="320" x1="784" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="128" y1="608" y2="848" x1="128" />
            <wire x2="320" y1="848" y2="848" x1="128" />
            <wire x2="784" y1="608" y2="608" x1="128" />
            <wire x2="784" y1="560" y2="560" x1="704" />
            <wire x2="784" y1="560" y2="608" x1="784" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="128" y1="896" y2="1136" x1="128" />
            <wire x2="320" y1="1136" y2="1136" x1="128" />
            <wire x2="768" y1="896" y2="896" x1="128" />
            <wire x2="768" y1="848" y2="848" x1="704" />
            <wire x2="768" y1="848" y2="896" x1="768" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="320" y1="144" y2="144" x1="288" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="320" y1="208" y2="208" x1="288" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="320" y1="432" y2="432" x1="288" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="320" y1="496" y2="496" x1="288" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="320" y1="720" y2="720" x1="288" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="320" y1="784" y2="784" x1="288" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="320" y1="1008" y2="1008" x1="288" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="320" y1="1072" y2="1072" x1="288" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="736" y1="144" y2="144" x1="704" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="736" y1="432" y2="432" x1="704" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="736" y1="720" y2="720" x1="704" />
        </branch>
        <branch name="XLXN_50">
            <wire x2="736" y1="1008" y2="1008" x1="704" />
        </branch>
        <branch name="XLXN_51">
            <wire x2="736" y1="1136" y2="1136" x1="704" />
        </branch>
        <iomarker fontsize="28" x="288" y="144" name="XLXN_39" orien="R180" />
        <iomarker fontsize="28" x="288" y="208" name="XLXN_40" orien="R180" />
        <iomarker fontsize="28" x="288" y="432" name="XLXN_41" orien="R180" />
        <iomarker fontsize="28" x="288" y="496" name="XLXN_42" orien="R180" />
        <iomarker fontsize="28" x="288" y="720" name="XLXN_43" orien="R180" />
        <iomarker fontsize="28" x="288" y="784" name="XLXN_44" orien="R180" />
        <iomarker fontsize="28" x="288" y="1008" name="XLXN_45" orien="R180" />
        <iomarker fontsize="28" x="288" y="1072" name="XLXN_46" orien="R180" />
        <iomarker fontsize="28" x="736" y="144" name="XLXN_47" orien="R0" />
        <iomarker fontsize="28" x="736" y="432" name="XLXN_48" orien="R0" />
        <iomarker fontsize="28" x="736" y="720" name="XLXN_49" orien="R0" />
        <iomarker fontsize="28" x="736" y="1008" name="XLXN_50" orien="R0" />
        <iomarker fontsize="28" x="736" y="1136" name="XLXN_51" orien="R0" />
        <branch name="XLXN_92">
            <wire x2="320" y1="272" y2="272" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="272" name="XLXN_92" orien="R180" />
        <instance x="208" y="1584" name="XLXI_32" orien="R0" />
        <branch name="XLXN_93">
            <wire x2="272" y1="1424" y2="1440" x1="272" />
            <wire x2="272" y1="1440" y2="1456" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="1424" name="XLXN_93" orien="R270" />
    </sheet>
</drawing>