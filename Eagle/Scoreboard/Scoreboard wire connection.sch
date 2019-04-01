<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.1.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="mm" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="mm"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="inductor-neosid" urn="urn:adsk.eagle:library:241">
<description>&lt;b&gt;Neosid Chokes and Transformers&lt;/b&gt;&lt;p&gt;

Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Electronic Component Book, Part 2 : Chokes, Fixed Value Inductors
&lt;li&gt;Part 3 : Filters, Coil Assemblies, Thermoplastic Parts
&lt;li&gt;Part 4 : SMD Filters, Coils, Fixed Value Inductors
&lt;li&gt;www.neosid.de
&lt;/ul&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SM-R6" urn="urn:adsk.eagle:footprint:14574/1" library_version="1">
<description>SMD TOROIDAL CORE &lt;B&gt;TRANSFORMER&lt;/B&gt;&lt;p&gt;
10.8 x 8.8 x 5.5 mm</description>
<wire x1="-4.3" y1="3.9" x2="-4.3" y2="3.6" width="0.2032" layer="51"/>
<wire x1="-4.3" y1="3.6" x2="-4.3" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-4.3" y1="-3.6" x2="-4.3" y2="-3.9" width="0.2032" layer="51"/>
<wire x1="-4.3" y1="-3.9" x2="-2.6" y2="-3.9" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="-3.9" x2="-0.1" y2="-3.9" width="0.2032" layer="51"/>
<wire x1="0.1" y1="-3.9" x2="2.4" y2="-3.9" width="0.2032" layer="51"/>
<wire x1="2.6" y1="-3.9" x2="4.3" y2="-3.9" width="0.2032" layer="51"/>
<wire x1="4.3" y1="-3.9" x2="4.3" y2="-3.6" width="0.2032" layer="51"/>
<wire x1="4.3" y1="3.6" x2="4.3" y2="3.9" width="0.2032" layer="51"/>
<wire x1="4.3" y1="3.9" x2="2.6" y2="3.9" width="0.2032" layer="51"/>
<wire x1="2.6" y1="3.9" x2="2.4" y2="3.9" width="0.2032" layer="21"/>
<wire x1="2.4" y1="3.9" x2="0.1" y2="3.9" width="0.2032" layer="51"/>
<wire x1="0.1" y1="3.9" x2="-2.6" y2="3.9" width="0.2032" layer="21"/>
<wire x1="-2.6" y1="3.9" x2="-4.3" y2="3.9" width="0.2032" layer="51"/>
<wire x1="4.3" y1="3.6" x2="4.3" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="2.6" y1="-3.9" x2="2.4" y2="-3.9" width="0.2032" layer="21"/>
<wire x1="0.1" y1="-3.9" x2="-0.1" y2="-3.9" width="0.2032" layer="21"/>
<wire x1="-2.4" y1="-3.9" x2="-2.6" y2="-3.9" width="0.2032" layer="21"/>
<wire x1="-3.6" y1="4" x2="-1.5" y2="1" width="0.2032" layer="51"/>
<wire x1="-1.8" y1="2.6" x2="-1.7" y2="2.7" width="0.2032" layer="51"/>
<wire x1="-1.7" y1="2.7" x2="-0.5" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1" y1="3" x2="-0.9" y2="3" width="0.2032" layer="51"/>
<wire x1="-0.9" y1="3" x2="0.1" y2="1.7" width="0.2032" layer="51"/>
<wire x1="0.7" y1="3.1" x2="0.8" y2="3.1" width="0.2032" layer="51"/>
<wire x1="0.8" y1="3.1" x2="0.9" y2="1.4" width="0.2032" layer="51"/>
<wire x1="3.7" y1="4.1" x2="2" y2="2.4" width="0.2032" layer="51"/>
<wire x1="-3.7" y1="-4" x2="-2.7" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.6" y1="-0.7" x2="-1.5" y2="-0.8" width="0.2032" layer="51"/>
<wire x1="-1.5" y1="-0.8" x2="-2.2" y2="-2.3" width="0.2032" layer="51"/>
<wire x1="-1.3" y1="-1.2" x2="-1.2" y2="-1.2" width="0.2032" layer="51"/>
<wire x1="-1.2" y1="-1.2" x2="-1.3" y2="-4" width="0.2032" layer="51"/>
<wire x1="1.3" y1="-4.1" x2="0.9" y2="-3" width="0.2032" layer="51"/>
<wire x1="0.6" y1="-1.6" x2="0.7" y2="-1.5" width="0.2032" layer="51"/>
<wire x1="0.7" y1="-1.5" x2="1.8" y2="-2.6" width="0.2032" layer="51"/>
<wire x1="1.2" y1="-1.2" x2="1.3" y2="-1.1" width="0.2032" layer="51"/>
<wire x1="1.3" y1="-1.1" x2="2.6" y2="-1.9" width="0.2032" layer="51"/>
<wire x1="2.6" y1="-1.9" x2="3.8" y2="-4.1" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="3" width="0.2032" layer="21"/>
<circle x="0" y="0" radius="1.875" width="0.2032" layer="21"/>
<smd name="1" x="-3.75" y="5.125" dx="1.8" dy="2.55" layer="1"/>
<smd name="3" x="1.25" y="5.125" dx="1.8" dy="2.55" layer="1"/>
<smd name="4" x="3.75" y="5.125" dx="1.8" dy="2.55" layer="1"/>
<smd name="5" x="3.75" y="-5.125" dx="1.8" dy="2.55" layer="1"/>
<smd name="6" x="1.25" y="-5.125" dx="1.8" dy="2.55" layer="1"/>
<smd name="7" x="-1.25" y="-5.125" dx="1.8" dy="2.55" layer="1"/>
<smd name="8" x="-3.75" y="-5.125" dx="1.8" dy="2.55" layer="1"/>
<text x="-5" y="-3" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="6.5" y="-3.5" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-4.125" y1="4" x2="-3.375" y2="5.375" layer="51"/>
<rectangle x1="0.875" y1="4" x2="1.6251" y2="5.375" layer="51"/>
<rectangle x1="3.375" y1="4" x2="4.125" y2="5.375" layer="51"/>
<rectangle x1="3.375" y1="-5.375" x2="4.125" y2="-4" layer="51"/>
<rectangle x1="0.875" y1="-5.375" x2="1.6251" y2="-4" layer="51"/>
<rectangle x1="-1.6251" y1="-5.375" x2="-0.875" y2="-4" layer="51"/>
<rectangle x1="-4.125" y1="-5.375" x2="-3.375" y2="-4" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="SM-R6" urn="urn:adsk.eagle:package:14703/1" type="box" library_version="1">
<description>SMD TOROIDAL CORE TRANSFORMER
10.8 x 8.8 x 5.5 mm</description>
<packageinstances>
<packageinstance name="SM-R6"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="SMR6-2" urn="urn:adsk.eagle:symbol:14573/1" library_version="1">
<wire x1="1.27" y1="2.032" x2="1.27" y2="1.27" width="0.1016" layer="94"/>
<wire x1="1.27" y1="0.508" x2="1.27" y2="-0.254" width="0.1016" layer="94"/>
<wire x1="1.27" y1="-1.016" x2="1.27" y2="-1.778" width="0.1016" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="-3.356" width="0.1016" layer="94"/>
<wire x1="1.27" y1="3.556" x2="1.27" y2="2.794" width="0.1016" layer="94"/>
<wire x1="2.794" y1="2.54" x2="2.794" y2="0.8466" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="2.794" y1="0.8466" x2="2.794" y2="-0.8466" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="2.794" y1="-0.8466" x2="2.794" y2="-2.54" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-0.254" y1="-2.54" x2="-0.254" y2="-0.8466" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-0.254" y1="-0.8466" x2="-0.254" y2="0.8466" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-0.254" y1="0.8466" x2="-0.254" y2="2.54" width="0.254" layer="94" curve="180" cap="flat"/>
<circle x="0.508" y="3.356" radius="0.3592" width="0" layer="94"/>
<circle x="2.032" y="3.356" radius="0.3592" width="0" layer="94"/>
<text x="2.286" y="-5.588" size="1.778" layer="96">&gt;VALUE</text>
<text x="2.286" y="4.826" size="1.778" layer="95">&gt;NAME</text>
<pin name="5" x="5.08" y="-2.54" visible="pad" length="short" direction="pas" swaplevel="2" rot="R180"/>
<pin name="8" x="5.08" y="2.54" visible="pad" length="short" direction="pas" swaplevel="2" rot="R180"/>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="4" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SMR6-2W" urn="urn:adsk.eagle:component:14761/1" prefix="TR" uservalue="yes" library_version="1">
<description>&lt;b&gt;TRANSFORMER&lt;/b&gt;&lt;p&gt;
SMD toroidal-core transformer with 2 windings</description>
<gates>
<gate name="G$1" symbol="SMR6-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SM-R6">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="8" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14703/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A3L-LOC" urn="urn:adsk.eagle:symbol:13881/1" library_version="1">
<wire x1="288.29" y1="3.81" x2="342.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="342.265" y1="3.81" x2="373.38" y2="3.81" width="0.1016" layer="94"/>
<wire x1="373.38" y1="3.81" x2="383.54" y2="3.81" width="0.1016" layer="94"/>
<wire x1="383.54" y1="3.81" x2="383.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="383.54" y1="8.89" x2="383.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="383.54" y1="13.97" x2="383.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="383.54" y1="19.05" x2="383.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="288.29" y1="3.81" x2="288.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="288.29" y1="24.13" x2="342.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="342.265" y1="24.13" x2="383.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="373.38" y1="3.81" x2="373.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="373.38" y1="8.89" x2="383.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="373.38" y1="8.89" x2="342.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="342.265" y1="8.89" x2="342.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="342.265" y1="8.89" x2="342.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="342.265" y1="13.97" x2="383.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="342.265" y1="13.97" x2="342.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="342.265" y1="19.05" x2="383.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="342.265" y1="19.05" x2="342.265" y2="24.13" width="0.1016" layer="94"/>
<text x="344.17" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="344.17" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="357.505" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="343.916" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="387.35" y2="260.35" columns="8" rows="5" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A3L-LOC" urn="urn:adsk.eagle:component:13942/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A3, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A3L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-tycoelectronics" urn="urn:adsk.eagle:library:193">
<description>&lt;b&gt;Tyco Electronics Connector&lt;/b&gt;&lt;p&gt;
http://catalog.tycoelectronics.com&lt;br&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="6ESRM-P" urn="urn:adsk.eagle:footprint:10641/1" library_version="1">
<description>&lt;b&gt;AC Connector&lt;/b&gt;&lt;p&gt;
120/250 VAC&lt;br&gt;
Source: http://catalog.tycoelectronics.com .. ENG_DS_1654001_1099_SR_0406.pdf</description>
<wire x1="-24.9" y1="-16.9" x2="24.9" y2="-16.9" width="0.2032" layer="21"/>
<wire x1="24.9" y1="-16.9" x2="24.9" y2="-13.9" width="0.2032" layer="21"/>
<wire x1="24.9" y1="-13.9" x2="-24.9" y2="-13.9" width="0.2032" layer="21"/>
<wire x1="-24.9" y1="-13.9" x2="-24.9" y2="-16.9" width="0.2032" layer="21"/>
<wire x1="-15.025" y1="-16.95" x2="-15.025" y2="-18.475" width="0.2032" layer="21"/>
<wire x1="-15.025" y1="-18.475" x2="15.025" y2="-18.475" width="0.2032" layer="21"/>
<wire x1="15.025" y1="-18.475" x2="15.025" y2="-16.975" width="0.2032" layer="21"/>
<wire x1="-24.9" y1="-13.9" x2="-24.9" y2="6.4" width="0.2032" layer="21"/>
<wire x1="-24.9" y1="6.4" x2="-14.605" y2="6.4" width="0.2032" layer="21"/>
<wire x1="14.605" y1="6.4" x2="24.9" y2="6.4" width="0.2032" layer="21"/>
<wire x1="24.9" y1="6.4" x2="24.9" y2="-13.9" width="0.2032" layer="21"/>
<wire x1="-14.605" y1="8.255" x2="14.605" y2="8.255" width="0.2032" layer="21"/>
<wire x1="14.605" y1="8.255" x2="14.605" y2="6.4" width="0.2032" layer="21"/>
<wire x1="14.605" y1="6.4" x2="14.605" y2="-13.97" width="0.2032" layer="21"/>
<wire x1="-14.605" y1="8.255" x2="-14.605" y2="6.4" width="0.2032" layer="21"/>
<wire x1="-14.605" y1="6.4" x2="-14.605" y2="-13.97" width="0.2032" layer="21"/>
<pad name="1" x="-9.1" y="9.7" drill="1.6" diameter="2.6"/>
<pad name="2" x="0" y="9.7" drill="1.6" diameter="2.6"/>
<pad name="3" x="9.1" y="9.7" drill="1.6" diameter="2.6"/>
<text x="-23.495" y="6.985" size="1.27" layer="25">&gt;NAME</text>
<text x="-10.16" y="-8.255" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-9.675" y1="8.25" x2="-8.525" y2="10.175" layer="51"/>
<rectangle x1="-0.575" y1="8.25" x2="0.575" y2="10.175" layer="51"/>
<rectangle x1="8.525" y1="8.25" x2="9.675" y2="10.175" layer="51"/>
<hole x="-20" y="0" drill="3.6"/>
<hole x="20" y="0" drill="3.6"/>
</package>
</packages>
<packages3d>
<package3d name="6ESRM-P" urn="urn:adsk.eagle:package:10655/1" type="box" library_version="1">
<description>AC Connector
120/250 VAC
Source: http://catalog.tycoelectronics.com .. ENG_DS_1654001_1099_SR_0406.pdf</description>
<packageinstances>
<packageinstance name="6ESRM-P"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="AC-CONNECTOR" urn="urn:adsk.eagle:symbol:10640/1" library_version="1">
<wire x1="0" y1="6.35" x2="0" y2="-6.35" width="0.254" layer="94"/>
<wire x1="0" y1="-6.35" x2="8.89" y2="-6.35" width="0.254" layer="94"/>
<wire x1="8.89" y1="-6.35" x2="8.89" y2="6.35" width="0.254" layer="94"/>
<wire x1="8.89" y1="6.35" x2="0" y2="6.35" width="0.254" layer="94"/>
<wire x1="4.8696" y1="-5.08" x2="5.2288" y2="-4.9312" width="0.254" layer="94" curve="44.999323"/>
<wire x1="5.2288" y1="-4.9312" x2="7.4712" y2="-2.6888" width="0.254" layer="94"/>
<wire x1="7.4712" y1="-2.6888" x2="7.62" y2="-2.3296" width="0.254" layer="94" curve="44.999323"/>
<wire x1="7.62" y1="-2.3296" x2="7.62" y2="2.3296" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.3296" x2="7.4712" y2="2.6888" width="0.254" layer="94" curve="44.999323"/>
<wire x1="7.4712" y1="2.6888" x2="5.2288" y2="4.9312" width="0.254" layer="94"/>
<wire x1="5.2288" y1="4.9312" x2="4.8696" y2="5.08" width="0.254" layer="94" curve="44.999323"/>
<wire x1="4.8696" y1="5.08" x2="1.778" y2="5.08" width="0.254" layer="94"/>
<wire x1="1.778" y1="5.08" x2="1.27" y2="4.572" width="0.254" layer="94" curve="90"/>
<wire x1="1.27" y1="4.572" x2="1.27" y2="-4.572" width="0.254" layer="94"/>
<wire x1="1.27" y1="-4.572" x2="1.778" y2="-5.08" width="0.254" layer="94" curve="90"/>
<wire x1="1.778" y1="-5.08" x2="4.8696" y2="-5.08" width="0.254" layer="94"/>
<rectangle x1="2.54" y1="3.429" x2="4.572" y2="4.064" layer="94"/>
<rectangle x1="5.08" y1="-0.254" x2="6.985" y2="0.254" layer="94"/>
<rectangle x1="2.54" y1="-3.937" x2="4.572" y2="-3.302" layer="94"/>
<pin name="AC1" x="-2.54" y="5.08" visible="pad" length="short" direction="pas"/>
<pin name="AC2" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas"/>
<pin name="SH" x="-2.54" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="6ESRM-P" urn="urn:adsk.eagle:component:10662/1" prefix="X" library_version="1">
<description>&lt;b&gt;AC Connector&lt;/b&gt;&lt;p&gt;
120/250 VAC&lt;br&gt;
Source: http://catalog.tycoelectronics.com .. ENG_DS_1654001_1099_SR_0406.pdf</description>
<gates>
<gate name="G$1" symbol="AC-CONNECTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="6ESRM-P">
<connects>
<connect gate="G$1" pin="AC1" pad="1"/>
<connect gate="G$1" pin="AC2" pad="3"/>
<connect gate="G$1" pin="SH" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10655/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="TYCO ELECTRONICS" constant="no"/>
<attribute name="MPN" value="6ESRM-P" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="87F1821" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="switch" urn="urn:adsk.eagle:library:380">
<description>&lt;b&gt;Switches&lt;/b&gt;&lt;p&gt;
Marquardt, Siemens, C&amp;K, ITT, and others&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="M9040P2" urn="urn:adsk.eagle:footprint:27542/1" library_version="1">
<description>&lt;b&gt;TOGGLE SWITCH&lt;/b&gt;&lt;p&gt;
Marquardt</description>
<wire x1="-5.6642" y1="6.6802" x2="-6.2992" y2="6.0452" width="0.1524" layer="21"/>
<wire x1="-5.6642" y1="6.6802" x2="5.6642" y2="6.6802" width="0.1524" layer="21"/>
<wire x1="6.2992" y1="6.0452" x2="5.6642" y2="6.6802" width="0.1524" layer="21"/>
<wire x1="5.6642" y1="-6.6802" x2="6.2992" y2="-6.0452" width="0.1524" layer="21"/>
<wire x1="5.6642" y1="-6.6802" x2="-5.6642" y2="-6.6802" width="0.1524" layer="21"/>
<wire x1="-6.2992" y1="-6.0452" x2="-5.6642" y2="-6.6802" width="0.1524" layer="21"/>
<wire x1="6.2992" y1="6.0452" x2="6.2992" y2="-6.0452" width="0.1524" layer="21"/>
<wire x1="-6.2992" y1="-6.0452" x2="-6.2992" y2="6.0452" width="0.1524" layer="21"/>
<wire x1="4.318" y1="2.286" x2="4.318" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="-4.318" y1="2.286" x2="-4.318" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="4.318" y1="2.286" x2="0" y2="5.08" width="0.1524" layer="51"/>
<wire x1="0" y1="5.08" x2="-4.318" y2="2.286" width="0.1524" layer="51"/>
<wire x1="-4.318" y1="-2.286" x2="0" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="0" y1="-5.08" x2="4.318" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="1.905" y1="-1.27" x2="2.54" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="1.905" y1="-3.175" x2="2.54" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="1.905" y1="-3.175" x2="-1.905" y2="-3.175" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-2.54" x2="-1.905" y2="-3.175" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="-1.905" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="1.27" x2="2.54" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="1.27" x2="-2.54" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-2.54" x2="2.54" y2="-2.54" width="0.1524" layer="51" curve="-270"/>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.1524" layer="51" curve="-233.130102"/>
<wire x1="-1.6002" y1="1.27" x2="1.6002" y2="1.27" width="0.1524" layer="51"/>
<pad name="3" x="-2.413" y="-4.699" drill="1.8034" shape="octagon"/>
<pad name="2" x="-2.413" y="0" drill="1.8034" shape="octagon"/>
<pad name="1" x="-2.413" y="4.699" drill="1.8034" shape="octagon"/>
<pad name="4" x="2.413" y="4.699" drill="1.8034" shape="octagon"/>
<pad name="5" x="2.413" y="0" drill="1.8034" shape="octagon"/>
<pad name="6" x="2.413" y="-4.699" drill="1.8034" shape="octagon"/>
<text x="-5.08" y="7.62" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-9.525" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="M9040P2" urn="urn:adsk.eagle:package:27687/1" type="box" library_version="1">
<description>TOGGLE SWITCH
Marquardt</description>
<packageinstances>
<packageinstance name="M9040P2"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="U2" urn="urn:adsk.eagle:symbol:27530/1" library_version="1">
<wire x1="0" y1="-3.175" x2="0" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="-1.905" x2="-1.905" y2="3.175" width="0.254" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="3.175" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="3.175" width="0.254" layer="94"/>
<wire x1="-0.635" y1="0" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="0" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="-3.175" y1="0" x2="-3.81" y2="0" width="0.1524" layer="94"/>
<text x="5.08" y="-1.905" size="1.778" layer="95" rot="R90">&gt;PART</text>
<pin name="P" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="S" x="2.54" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="O" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
</symbol>
<symbol name="KS-U-" urn="urn:adsk.eagle:symbol:27540/1" library_version="1">
<wire x1="-3.81" y1="1.905" x2="-2.54" y2="1.905" width="0.254" layer="94"/>
<wire x1="-3.81" y1="1.905" x2="-3.81" y2="0" width="0.254" layer="94"/>
<wire x1="-3.81" y1="0" x2="-1.905" y2="0" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="0" x2="-3.81" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0" x2="-0.762" y2="0" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="1.905" x2="-3.81" y2="1.905" width="0.254" layer="94"/>
<wire x1="0.254" y1="0" x2="0.635" y2="0" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0" x2="1.905" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-3.175" x2="2.54" y2="-1.905" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.905" x2="0.635" y2="3.175" width="0.254" layer="94"/>
<wire x1="3.81" y1="2.54" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="3.175" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="3.175" width="0.254" layer="94"/>
<wire x1="-0.762" y1="0" x2="-0.254" y2="-0.762" width="0.1524" layer="94"/>
<wire x1="-0.254" y1="-0.762" x2="0.254" y2="0" width="0.1524" layer="94"/>
<wire x1="1.905" y1="0" x2="2.413" y2="0" width="0.1524" layer="94"/>
<wire x1="3.175" y1="0" x2="3.683" y2="0" width="0.1524" layer="94"/>
<wire x1="4.445" y1="0" x2="4.953" y2="0" width="0.1524" layer="94"/>
<text x="-3.81" y="2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<text x="-6.35" y="-1.905" size="1.778" layer="95" rot="R90">&gt;PART</text>
<pin name="P" x="2.54" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="S" x="5.08" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="O" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="M9040P2" urn="urn:adsk.eagle:component:27768/1" prefix="S" uservalue="yes" library_version="1">
<description>&lt;b&gt;TOGGLE SWITCH&lt;/b&gt;&lt;p&gt;
Marquardt</description>
<gates>
<gate name="2" symbol="U2" x="12.7" y="0" addlevel="always"/>
<gate name="1" symbol="KS-U-" x="0" y="0" addlevel="must"/>
</gates>
<devices>
<device name="" package="M9040P2">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
<connect gate="2" pin="O" pad="4"/>
<connect gate="2" pin="P" pad="5"/>
<connect gate="2" pin="S" pad="6"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27687/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ArduinoNanoV30">
<packages>
<package name="ARDUINO_NANO">
<description>&lt;b&gt;Arduino Nano V3.0 Module&lt;/b&gt;

&lt;p&gt;The Nano was designed and is being produced by &lt;a href="http://www.gravitech.us/arna30wiatp.html"&gt;Gravitech&lt;/a&gt;.&lt;/p&gt;&lt;br&gt;</description>
<hole x="-22.86" y="-7.62" drill="1.778"/>
<pad name="1" x="-20.32" y="-7.62" drill="0.8" shape="square"/>
<pad name="2" x="-17.78" y="-7.62" drill="0.8"/>
<pad name="3" x="-15.24" y="-7.62" drill="0.8"/>
<pad name="4" x="-12.7" y="-7.62" drill="0.8"/>
<pad name="5" x="-10.16" y="-7.62" drill="0.8"/>
<pad name="6" x="-7.62" y="-7.62" drill="0.8"/>
<pad name="7" x="-5.08" y="-7.62" drill="0.8"/>
<pad name="8" x="-2.54" y="-7.62" drill="0.8"/>
<pad name="9" x="0" y="-7.62" drill="0.8"/>
<pad name="10" x="2.54" y="-7.62" drill="0.8"/>
<pad name="11" x="5.08" y="-7.62" drill="0.8"/>
<pad name="12" x="7.62" y="-7.62" drill="0.8"/>
<pad name="13" x="10.16" y="-7.62" drill="0.8"/>
<pad name="14" x="12.7" y="-7.62" drill="0.8"/>
<pad name="15" x="15.24" y="-7.62" drill="0.8"/>
<pad name="16" x="15.24" y="7.62" drill="0.8"/>
<pad name="17" x="12.7" y="7.62" drill="0.8"/>
<pad name="18" x="10.16" y="7.62" drill="0.8"/>
<pad name="19" x="7.62" y="7.62" drill="0.8"/>
<pad name="20" x="5.08" y="7.62" drill="0.8"/>
<pad name="21" x="2.54" y="7.62" drill="0.8"/>
<pad name="22" x="0" y="7.62" drill="0.8"/>
<pad name="23" x="-2.54" y="7.62" drill="0.8"/>
<pad name="24" x="-5.08" y="7.62" drill="0.8"/>
<pad name="25" x="-7.62" y="7.62" drill="0.8"/>
<pad name="26" x="-10.16" y="7.62" drill="0.8"/>
<pad name="27" x="-12.7" y="7.62" drill="0.8"/>
<pad name="28" x="-15.24" y="7.62" drill="0.8"/>
<pad name="29" x="-17.78" y="7.62" drill="0.8"/>
<pad name="30" x="-20.32" y="7.62" drill="0.8"/>
<hole x="-22.86" y="7.62" drill="1.778"/>
<hole x="17.78" y="7.62" drill="1.778"/>
<hole x="17.78" y="-7.62" drill="1.778"/>
<wire x1="-24.13" y1="8.89" x2="17.78" y2="8.89" width="0.127" layer="21"/>
<wire x1="17.78" y1="8.89" x2="19.05" y2="8.89" width="0.127" layer="21"/>
<wire x1="19.05" y1="8.89" x2="19.05" y2="7.62" width="0.127" layer="21"/>
<wire x1="19.05" y1="7.62" x2="19.05" y2="3.81" width="0.127" layer="21"/>
<wire x1="19.05" y1="3.81" x2="19.05" y2="-3.81" width="0.127" layer="21"/>
<wire x1="19.05" y1="-3.81" x2="19.05" y2="-7.62" width="0.127" layer="21"/>
<wire x1="19.05" y1="-7.62" x2="19.05" y2="-8.89" width="0.127" layer="21"/>
<wire x1="19.05" y1="-8.89" x2="17.78" y2="-8.89" width="0.127" layer="21"/>
<wire x1="17.78" y1="-8.89" x2="-22.86" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-22.86" y1="-8.89" x2="-24.13" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-24.13" y1="-8.89" x2="-24.13" y2="-7.62" width="0.127" layer="21"/>
<wire x1="-24.13" y1="-7.62" x2="-24.13" y2="2.54" width="0.127" layer="21"/>
<wire x1="-24.13" y1="2.54" x2="-24.13" y2="8.89" width="0.127" layer="21"/>
<wire x1="-24.13" y1="2.54" x2="-25.4" y2="2.54" width="0.127" layer="21"/>
<wire x1="-25.4" y1="2.54" x2="-25.4" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-19.05" y1="-2.54" x2="-19.05" y2="2.54" width="0.127" layer="21"/>
<wire x1="-19.05" y1="2.54" x2="-24.13" y2="2.54" width="0.127" layer="21"/>
<wire x1="-19.05" y1="-2.54" x2="-25.4" y2="-2.54" width="0.127" layer="21"/>
<text x="-17.78" y="0" size="1.27" layer="21" font="vector">&gt;NAME</text>
<text x="-17.78" y="-2.54" size="1.27" layer="21" font="vector">&gt;VALUE</text>
<circle x="0" y="0" radius="1.79605" width="0.127" layer="21"/>
<text x="2.54" y="0" size="0.8128" layer="21" font="vector" rot="R90" align="center">Reset</text>
<text x="-20.32" y="-6.35" size="1.016" layer="21" font="vector">1</text>
<text x="-21.59" y="0" size="0.6096" layer="21" font="vector" rot="R270" align="center">Mini-B
USB</text>
<wire x1="19.05" y1="3.81" x2="13.97" y2="3.81" width="0.127" layer="21"/>
<wire x1="13.97" y1="3.81" x2="13.97" y2="-3.81" width="0.127" layer="21"/>
<wire x1="13.97" y1="-3.81" x2="19.05" y2="-3.81" width="0.127" layer="21"/>
<circle x="17.78" y="-2.54" radius="0.8" width="0.127" layer="21"/>
<circle x="17.78" y="0" radius="0.8" width="0.127" layer="21"/>
<circle x="17.78" y="2.54" radius="0.8" width="0.127" layer="21"/>
<circle x="15.24" y="2.54" radius="0.8" width="0.127" layer="21"/>
<circle x="17.78" y="0" radius="0.8" width="0.127" layer="21"/>
<circle x="15.24" y="0" radius="0.8" width="0.127" layer="21"/>
<circle x="15.24" y="-2.54" radius="0.8" width="0.127" layer="21"/>
<text x="12.7" y="1.27" size="0.8128" layer="21" font="vector" rot="SR270">ICSP</text>
<text x="17.78" y="-4.445" size="1.016" layer="21" font="vector" rot="SR270">1</text>
<polygon width="0.127" layer="21">
<vertex x="15.24" y="6.35"/>
<vertex x="13.97" y="5.08"/>
<vertex x="16.51" y="5.08"/>
</polygon>
<polygon width="0.127" layer="21">
<vertex x="12.7" y="5.08"/>
<vertex x="13.97" y="6.35"/>
<vertex x="11.43" y="6.35"/>
</polygon>
<text x="-22.86" y="-1.27" size="0.0508" layer="21" font="vector" ratio="1" rot="R90">This library was created by Esp. Marco-Luis SALCEDO TOVAR.
Please report any errors or suggestions to: YV1HX@CANTV.NET
Thanks you!!!</text>
<wire x1="-24.13" y1="7.62" x2="-21.59" y2="7.62" width="0.015875" layer="21"/>
<wire x1="-22.86" y1="8.89" x2="-22.86" y2="6.35" width="0.015875" layer="21"/>
<wire x1="-24.13" y1="-7.62" x2="-21.59" y2="-7.62" width="0.015875" layer="21"/>
<wire x1="-22.86" y1="-6.35" x2="-22.86" y2="-8.89" width="0.015875" layer="21"/>
<wire x1="17.78" y1="-8.89" x2="17.78" y2="-6.35" width="0.015875" layer="21"/>
<wire x1="16.51" y1="-7.62" x2="19.05" y2="-7.62" width="0.015875" layer="21"/>
<wire x1="17.78" y1="6.35" x2="17.78" y2="8.89" width="0.015875" layer="21"/>
<wire x1="16.51" y1="7.62" x2="19.05" y2="7.62" width="0.015875" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="ARDUINO_NANO">
<description>&lt;b&gt;Arduino Nano V3.0 Module&lt;/b&gt;&lt;br&gt;&lt;br&gt;

&lt;b&gt;Overview:&lt;/b&gt;&lt;br&gt;

&lt;p&gt;The Arduino Nano is a small, complete, and breadboard-friendly board based on the ATmega328 (Arduino Nano 3.x) or ATmega168 (Arduino Nano 2.x). It has more or less the same functionality of the Arduino Duemilanove, but in a different package. It lacks only a DC power jack, and works with a Mini-B USB cable instead of a standard one.&lt;br&gt;
The Nano was designed and is being produced by &lt;a href="http://www.gravitech.us/arna30wiatp.html"&gt;Gravitech&lt;/a&gt;.&lt;/p&gt;&lt;br&gt;

&lt;table border="1" style="width:auto"&gt;
&lt;tr&gt;
  &lt;th colspan="2"&gt;&lt;b&gt;General specifications:&lt;/b&gt;&lt;/th&gt;
&lt;/tr&gt;
&lt;tr&gt;
    &lt;th&gt;Item&lt;/th&gt;
    &lt;th&gt;Value&lt;/th&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Microcontroller&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;Atmel ATmega168 or ATmega328&lt;/center&gt;&lt;/td&gt;		
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Operating Voltage (logic level)&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;5 V&lt;/center&gt;&lt;/td&gt;		
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Input Voltage (recommended)&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;7-12 V&lt;/center&gt;&lt;/td&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Input Voltage (limits)&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;6-20 V&lt;/center&gt;&lt;/td&gt;		
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Digital I/O Pins&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;14 (of which 6 provide PWM output)&lt;/center&gt;&lt;/td&gt;		
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Analog Input Pins&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;8&lt;/center&gt;&lt;/td&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;DC Current per I/O Pin&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;40 mA&lt;/center&gt;&lt;/td&gt;		
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Flash Memory&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;16 KB (ATmega168) or 32 KB (ATmega328) of which 2 KB used by bootloader&lt;/center&gt;&lt;/td&gt;		
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;SRAM&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;1 KB (ATmega168) or 2 KB (ATmega328)&lt;/center&gt;&lt;/td&gt;		
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;EEPROM&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;512 bytes (ATmega168) or 1 KB (ATmega328)&lt;/center&gt;&lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Clock Speed&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;16 MHz&lt;/center&gt;&lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Dimensions (Inches) &lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;0.73" x 1.70"&lt;/center&gt;&lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Dimensions (mm) &lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;18mm x 45mm&lt;/center&gt;&lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Overall height&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;About 9 mm (not including pins)&lt;/center&gt;&lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Weigth&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;5 g&lt;/center&gt;&lt;/td&gt;
  &lt;/tr&gt;
&lt;/table&gt;
&lt;br&gt;&lt;br&gt;

&lt;b&gt;Power:&lt;/b&gt;&lt;br&gt;

The Arduino Nano can be powered via the Mini-B USB connection, 6-20V unregulated external power supply (pin 30), or 5V regulated external power supply (pin 27).&lt;br&gt;
The power source is automatically selected to the highest voltage source.&lt;br&gt;&lt;br&gt;

&lt;b&gt;Memory:&lt;/b&gt;&lt;br&gt;

The ATmega168 has 16 KB of flash memory for storing code (of which 2 KB is used for the bootloader); the ATmega328 has 32 KB, (also with 2 KB used for the bootloader).&lt;br&gt;
The ATmega168 has 1 KB of SRAM and 512 bytes of EEPROM (which can be read and written with the EEPROM library); the ATmega328 has 2 KB of SRAM and 1 KB of EEPROM.&lt;br&gt;&lt;br&gt;

&lt;b&gt;Input and Output:&lt;/b&gt;&lt;br&gt;

Each of the 14 digital pins on the Nano can be used as an input or output, using pinMode(), digitalWrite(), and digitalRead() functions.&lt;br&gt;
They operate at 5 volts.&lt;br&gt;
Each pin can provide or receive a maximum of 40 mA and has an internal pull-up resistor (disconnected by default) of 20-50 kOhms. In addition, some pins have specialized functions.&lt;br&gt;&lt;br&gt;

&lt;a href="https://www.arduino.cc/en/Main/ArduinoBoardNano"&gt;Visit Arduino - ArduinoBoardNano&lt;/a&gt;</description>
<wire x1="-15.24" y1="-15.24" x2="-15.24" y2="25.4" width="0.254" layer="94"/>
<wire x1="-15.24" y1="25.4" x2="-5.08" y2="25.4" width="0.254" layer="94"/>
<wire x1="-5.08" y1="25.4" x2="5.08" y2="25.4" width="0.254" layer="94"/>
<wire x1="5.08" y1="25.4" x2="15.24" y2="25.4" width="0.254" layer="94"/>
<wire x1="15.24" y1="25.4" x2="15.24" y2="-15.24" width="0.254" layer="94"/>
<wire x1="15.24" y1="-15.24" x2="-15.24" y2="-15.24" width="0.254" layer="94"/>
<pin name="D1/TX" x="-20.32" y="22.86" length="middle"/>
<pin name="D0/RX" x="-20.32" y="20.32" length="middle"/>
<pin name="!RESET@1" x="-20.32" y="17.78" length="middle" direction="in" function="dot"/>
<pin name="GND@1" x="-20.32" y="15.24" length="middle" direction="pwr"/>
<pin name="D2/INT0" x="-20.32" y="12.7" length="middle"/>
<pin name="D3/INT1" x="-20.32" y="10.16" length="middle"/>
<pin name="D4/T0" x="-20.32" y="7.62" length="middle"/>
<pin name="D5/T1" x="-20.32" y="5.08" length="middle"/>
<pin name="D6/AIN0" x="-20.32" y="2.54" length="middle"/>
<pin name="D7/AIN1" x="-20.32" y="0" length="middle"/>
<pin name="D8/CLK0" x="-20.32" y="-2.54" length="middle"/>
<pin name="D9/OC1A" x="-20.32" y="-5.08" length="middle"/>
<pin name="D10/OC1B/!SS" x="-20.32" y="-7.62" length="middle"/>
<pin name="D11/MOSI" x="-20.32" y="-10.16" length="middle"/>
<pin name="D12/MISO" x="-20.32" y="-12.7" length="middle"/>
<pin name="SCK/D13" x="20.32" y="-12.7" length="middle" rot="R180"/>
<pin name="3V3" x="20.32" y="-10.16" length="middle" direction="out" rot="R180"/>
<pin name="AREF" x="20.32" y="-7.62" length="middle" direction="in" rot="R180"/>
<pin name="ADC0/A0" x="20.32" y="-5.08" length="middle" rot="R180"/>
<pin name="ADC1/A1" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="ADC2/A2" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="ADC3/A3" x="20.32" y="2.54" length="middle" rot="R180"/>
<pin name="ADC4/SDA/A4" x="20.32" y="5.08" length="middle" rot="R180"/>
<pin name="ADC5/SCL/A5" x="20.32" y="7.62" length="middle" rot="R180"/>
<pin name="ADC6/A6" x="20.32" y="10.16" length="middle" rot="R180"/>
<pin name="ADC7/A7" x="20.32" y="12.7" length="middle" rot="R180"/>
<pin name="5V" x="20.32" y="15.24" length="middle" direction="pwr" rot="R180"/>
<pin name="!RESET@2" x="20.32" y="17.78" length="middle" direction="in" function="dot" rot="R180"/>
<pin name="GND@2" x="20.32" y="20.32" length="middle" direction="pwr" rot="R180"/>
<pin name="VIN" x="20.32" y="22.86" length="middle" direction="pwr" rot="R180"/>
<wire x1="2.54" y1="-10.16" x2="-2.54" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-10.16" x2="-2.54" y2="-16.51" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-16.51" x2="2.54" y2="-16.51" width="0.254" layer="94"/>
<wire x1="2.54" y1="-16.51" x2="2.54" y2="-10.16" width="0.254" layer="94"/>
<text x="0" y="-12.7" size="0.8128" layer="94" font="vector" align="center">Mini-B
USB</text>
<circle x="0" y="0" radius="2.54" width="0.254" layer="94"/>
<text x="0" y="0" size="0.8128" layer="94" font="vector" rot="R180" align="center">RESET
BUTTON</text>
<text x="-15.24" y="-20.32" size="1.778" layer="95">&gt;NAME</text>
<text x="-15.24" y="-22.86" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="-5.08" y1="25.4" x2="-5.08" y2="20.32" width="0.254" layer="94"/>
<wire x1="-5.08" y1="20.32" x2="5.08" y2="20.32" width="0.254" layer="94"/>
<wire x1="5.08" y1="20.32" x2="5.08" y2="25.4" width="0.254" layer="94"/>
<text x="-2.54" y="17.78" size="1.6764" layer="94" font="vector">ICSP</text>
<circle x="-2.54" y="21.59" radius="0.762" width="0.254" layer="94"/>
<circle x="0" y="24.13" radius="0.762" width="0.254" layer="94"/>
<circle x="2.54" y="24.13" radius="0.762" width="0.254" layer="94"/>
<circle x="-2.54" y="24.13" radius="0.762" width="0.254" layer="94"/>
<circle x="2.54" y="21.59" radius="0.762" width="0.254" layer="94"/>
<circle x="0" y="21.59" radius="0.762" width="0.254" layer="94"/>
<polygon width="0.254" layer="94">
<vertex x="-15.24" y="22.86"/>
<vertex x="-13.97" y="24.13"/>
<vertex x="-13.97" y="21.59"/>
</polygon>
<polygon width="0.254" layer="94">
<vertex x="-15.24" y="21.59"/>
<vertex x="-13.97" y="20.32"/>
<vertex x="-15.24" y="19.05"/>
</polygon>
<text x="6.35" y="24.13" size="0.8128" layer="94" font="vector" align="bottom-right">1</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ARDUINO_NANO" prefix="ARDUINO_NANO" uservalue="yes">
<description>&lt;b&gt;Arduino Nano V3.0 Module&lt;/b&gt;&lt;br&gt;&lt;br&gt;

&lt;b&gt;Overview:&lt;/b&gt;&lt;br&gt;

&lt;p&gt;The Arduino Nano is a small, complete, and breadboard-friendly board based on the ATmega328 (Arduino Nano 3.x) or ATmega168 (Arduino Nano 2.x). &lt;br&gt;It has more or less the same functionality of the Arduino Duemilanove, but in a different package.&lt;br&gt;
It lacks only a DC power jack, and works with a Mini-B USB cable instead of a standard one.&lt;br&gt;
The Nano was designed and is being produced by &lt;a href="http://www.gravitech.us/arna30wiatp.html"&gt;Gravitech&lt;/a&gt;.&lt;/p&gt;&lt;br&gt;

&lt;table border="1" style="width:auto"&gt;
&lt;tr&gt;
  &lt;th colspan="2"&gt;&lt;b&gt;General specifications:&lt;/b&gt;&lt;/th&gt;
&lt;/tr&gt;
&lt;tr&gt;
    &lt;th&gt;Item&lt;/th&gt;
    &lt;th&gt;Value&lt;/th&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Microcontroller&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;Atmel ATmega168 or ATmega328&lt;/center&gt;&lt;/td&gt;		
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Operating Voltage (logic level)&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;5 V&lt;/center&gt;&lt;/td&gt;		
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Input Voltage (recommended)&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;7-12 V&lt;/center&gt;&lt;/td&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Input Voltage (limits)&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;6-20 V&lt;/center&gt;&lt;/td&gt;		
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Digital I/O Pins&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;14 (of which 6 provide PWM output)&lt;/center&gt;&lt;/td&gt;		
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Analog Input Pins&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;8&lt;/center&gt;&lt;/td&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;DC Current per I/O Pin&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;40 mA&lt;/center&gt;&lt;/td&gt;		
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Flash Memory&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;16 KB (ATmega168) or 32 KB (ATmega328) of which 2 KB used by bootloader&lt;/center&gt;&lt;/td&gt;		
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;SRAM&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;1 KB (ATmega168) or 2 KB (ATmega328)&lt;/center&gt;&lt;/td&gt;		
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;EEPROM&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;512 bytes (ATmega168) or 1 KB (ATmega328)&lt;/center&gt;&lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Clock Speed&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;16 MHz&lt;/center&gt;&lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Dimensions (Inches) &lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;0.73" x 1.70"&lt;/center&gt;&lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Dimensions (mm) &lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;18mm x 45mm&lt;/center&gt;&lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Overall height&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;About 9 mm (not including pins)&lt;/center&gt;&lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;center&gt;Weigth&lt;/center&gt;&lt;/td&gt;
    &lt;td&gt;&lt;center&gt;5 g&lt;/center&gt;&lt;/td&gt;
  &lt;/tr&gt;
&lt;/table&gt;
&lt;br&gt;&lt;br&gt;

&lt;b&gt;Power:&lt;/b&gt;&lt;br&gt;

&lt;p&gt;The Arduino Nano can be powered via the Mini-B USB connection, 6-20V unregulated external power supply (pin 30), or 5V regulated external power supply (pin 27).&lt;br&gt;
The power source is automatically selected to the highest voltage source.&lt;/p&gt;&lt;br&gt;

&lt;b&gt;Memory:&lt;/b&gt;&lt;br&gt;

&lt;p&gt;The ATmega168 has 16 KB of flash memory for storing code (of which 2 KB is used for the bootloader); the ATmega328 has 32 KB, (also with 2 KB used for the bootloader).&lt;br&gt;
The ATmega168 has 1 KB of SRAM and 512 bytes of EEPROM (which can be read and written with the EEPROM library); the ATmega328 has 2 KB of SRAM and 1 KB of EEPROM.&lt;/p&gt;&lt;br&gt;

&lt;b&gt;Input and Output:&lt;/b&gt;&lt;br&gt;

&lt;p&gt;Each of the 14 digital pins on the Nano can be used as an input or output, using pinMode(), digitalWrite(), and digitalRead() functions.&lt;br&gt;
They operate at 5 volts.&lt;br&gt;
Each pin can provide or receive a maximum of 40 mA and has an internal pull-up resistor (disconnected by default) of 20-50 kOhms. In addition, some pins have specialized functions.&lt;/p&gt;&lt;br&gt;

&lt;a href="https://www.arduino.cc/en/Main/ArduinoBoardNano"&gt;Visit Arduino - ArduinoBoardNano&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ARDUINO_NANO" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ARDUINO_NANO">
<connects>
<connect gate="G$1" pin="!RESET@1" pad="18"/>
<connect gate="G$1" pin="!RESET@2" pad="13"/>
<connect gate="G$1" pin="3V3" pad="2"/>
<connect gate="G$1" pin="5V" pad="12"/>
<connect gate="G$1" pin="ADC0/A0" pad="4"/>
<connect gate="G$1" pin="ADC1/A1" pad="5"/>
<connect gate="G$1" pin="ADC2/A2" pad="6"/>
<connect gate="G$1" pin="ADC3/A3" pad="7"/>
<connect gate="G$1" pin="ADC4/SDA/A4" pad="8"/>
<connect gate="G$1" pin="ADC5/SCL/A5" pad="9"/>
<connect gate="G$1" pin="ADC6/A6" pad="10"/>
<connect gate="G$1" pin="ADC7/A7" pad="11"/>
<connect gate="G$1" pin="AREF" pad="3"/>
<connect gate="G$1" pin="D0/RX" pad="17"/>
<connect gate="G$1" pin="D1/TX" pad="16"/>
<connect gate="G$1" pin="D10/OC1B/!SS" pad="28"/>
<connect gate="G$1" pin="D11/MOSI" pad="29"/>
<connect gate="G$1" pin="D12/MISO" pad="30"/>
<connect gate="G$1" pin="D2/INT0" pad="20"/>
<connect gate="G$1" pin="D3/INT1" pad="21"/>
<connect gate="G$1" pin="D4/T0" pad="22"/>
<connect gate="G$1" pin="D5/T1" pad="23"/>
<connect gate="G$1" pin="D6/AIN0" pad="24"/>
<connect gate="G$1" pin="D7/AIN1" pad="25"/>
<connect gate="G$1" pin="D8/CLK0" pad="26"/>
<connect gate="G$1" pin="D9/OC1A" pad="27"/>
<connect gate="G$1" pin="GND@1" pad="19"/>
<connect gate="G$1" pin="GND@2" pad="14"/>
<connect gate="G$1" pin="SCK/D13" pad="1"/>
<connect gate="G$1" pin="VIN" pad="15"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-ptr500" urn="urn:adsk.eagle:library:181">
<description>&lt;b&gt;PTR Connectors&lt;/b&gt;&lt;p&gt;
Aug. 2004 / PTR Meßtechnik:&lt;br&gt;
Die Bezeichnung der Serie AK505 wurde geändert.&lt;br&gt;
Es handelt sich hierbei um AK500 in horizontaler Ausführung.&lt;p&gt;
&lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=2&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;Alte Bezeichnung&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;Neue Bezeichnung&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;AK505/2,grau&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#0000FF"&gt;AK500/2-5.0-H-GRAU&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;AK505/2DS,grau&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#0000FF"&gt;AK500/2DS-5.0-H-GRAU&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;AKZ505/2,grau&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#0000FF"&gt;AKZ500/2-5.08-H-GRAU&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
  &lt;/TABLE&gt;

&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="AK300/2" urn="urn:adsk.eagle:footprint:9843/1" library_version="1">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;</description>
<wire x1="5.08" y1="6.223" x2="5.08" y2="3.175" width="0.1524" layer="21"/>
<wire x1="5.08" y1="6.223" x2="-5.08" y2="6.223" width="0.1524" layer="21"/>
<wire x1="5.08" y1="6.223" x2="5.588" y2="6.223" width="0.1524" layer="21"/>
<wire x1="5.588" y1="6.223" x2="5.588" y2="1.397" width="0.1524" layer="21"/>
<wire x1="5.588" y1="1.397" x2="5.08" y2="1.651" width="0.1524" layer="21"/>
<wire x1="5.588" y1="-5.461" x2="5.08" y2="-5.207" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-5.207" x2="5.08" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="5.588" y1="-3.81" x2="5.08" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-4.064" x2="5.08" y2="-5.207" width="0.1524" layer="21"/>
<wire x1="5.588" y1="-3.81" x2="5.588" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="0.4572" y1="-6.223" x2="0.4572" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="4.5212" y1="0.254" x2="4.5212" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="0.4572" y1="-6.223" x2="4.5212" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="4.5212" y1="-6.223" x2="5.08" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="-6.223" x2="-0.4826" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="-6.223" x2="0.4572" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-4.5466" y1="0.254" x2="-4.5466" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-6.223" x2="-4.5466" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-4.5466" y1="-6.223" x2="-0.4826" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="0.4572" y1="-4.318" x2="4.5212" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="0.4572" y1="-4.318" x2="0.4572" y2="0.254" width="0.1524" layer="21"/>
<wire x1="4.5212" y1="-4.318" x2="4.5212" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="-4.318" x2="-4.5466" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="-4.318" x2="-0.4826" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-4.5466" y1="-4.318" x2="-4.5466" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="4.1402" y1="-3.683" x2="4.1402" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="4.1402" y1="-3.683" x2="0.8382" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="0.8382" y1="-3.683" x2="0.8382" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-0.8636" y1="-3.683" x2="-0.8636" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-0.8636" y1="-3.683" x2="-4.1656" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-4.1656" y1="-3.683" x2="-4.1656" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-4.1656" y1="-0.508" x2="-3.7846" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-0.508" x2="-1.2446" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="0.8382" y1="-0.508" x2="1.2192" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="-0.508" x2="3.7592" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-5.08" y1="-6.223" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="3.175" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.651" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.175" x2="5.08" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.175" x2="-5.08" y2="6.223" width="0.1524" layer="21"/>
<wire x1="5.08" y1="3.175" x2="5.08" y2="1.651" width="0.1524" layer="21"/>
<wire x1="0.4572" y1="3.429" x2="0.4572" y2="5.969" width="0.1524" layer="21"/>
<wire x1="0.4572" y1="5.969" x2="4.5212" y2="5.969" width="0.1524" layer="21"/>
<wire x1="4.5212" y1="5.969" x2="4.5212" y2="3.429" width="0.1524" layer="21"/>
<wire x1="4.5212" y1="3.429" x2="0.4572" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="3.429" x2="-0.4826" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="3.429" x2="-4.5466" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-4.5466" y1="3.429" x2="-4.5466" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="5.969" x2="-4.5466" y2="5.969" width="0.1524" layer="21"/>
<wire x1="3.9574" y1="4.0849" x2="4.0131" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="1.016" y1="4.1656" x2="4.0038" y2="4.1189" width="0.1524" layer="21" curve="75.530157"/>
<wire x1="0.8636" y1="5.0038" x2="4.0178" y2="5.0586" width="0.1524" layer="21" curve="-100.0232"/>
<wire x1="0.9144" y1="5.0546" x2="1.0581" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="0.8636" y1="4.445" x2="3.9116" y2="5.08" width="0.1524" layer="21"/>
<wire x1="0.9906" y1="4.318" x2="4.0386" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-1.0464" y1="4.0849" x2="-0.9907" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="-3.9878" y1="4.1656" x2="-1" y2="4.1188" width="0.1524" layer="21" curve="75.528719"/>
<wire x1="-4.1402" y1="5.0038" x2="-0.9858" y2="5.0588" width="0.1524" layer="21" curve="-100.022513"/>
<wire x1="-4.0894" y1="5.0546" x2="-3.9457" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="-4.1402" y1="4.445" x2="-1.0922" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-4.0132" y1="4.318" x2="-0.9652" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-4.5466" y1="0.254" x2="-4.1656" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="0.254" x2="-0.8636" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-0.8636" y1="0.254" x2="-4.1656" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-5.08" y1="0.635" x2="-4.1656" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-4.1656" y1="0.635" x2="-0.8636" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="0.635" x2="0.8382" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="4.1402" y2="0.635" width="0.1524" layer="21"/>
<wire x1="4.1402" y1="0.635" x2="0.8382" y2="0.635" width="0.1524" layer="51"/>
<wire x1="4.5212" y1="0.254" x2="4.1402" y2="0.254" width="0.1524" layer="21"/>
<wire x1="0.4572" y1="0.254" x2="0.8382" y2="0.254" width="0.1524" layer="21"/>
<wire x1="0.8382" y1="0.254" x2="4.1402" y2="0.254" width="0.1524" layer="51"/>
<pad name="1" x="-2.5146" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="2" x="2.4892" y="0" drill="1.3208" shape="long" rot="R90"/>
<text x="-5.08" y="6.731" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-8.636" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-4.4958" y="1.27" size="1.27" layer="21" ratio="10">1</text>
<text x="0.5842" y="1.27" size="1.27" layer="21" ratio="10">2</text>
<rectangle x1="-3.7846" y1="-2.54" x2="-1.2446" y2="0.254" layer="51"/>
<rectangle x1="1.2192" y1="-2.54" x2="3.7592" y2="0.254" layer="51"/>
</package>
<package name="AK300/3" urn="urn:adsk.eagle:footprint:9848/1" library_version="1">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;</description>
<wire x1="7.5438" y1="6.223" x2="7.5438" y2="3.175" width="0.1524" layer="21"/>
<wire x1="7.5438" y1="6.223" x2="-7.5438" y2="6.223" width="0.1524" layer="21"/>
<wire x1="7.5438" y1="6.223" x2="8.0518" y2="6.223" width="0.1524" layer="21"/>
<wire x1="8.0518" y1="6.223" x2="8.0518" y2="1.397" width="0.1524" layer="21"/>
<wire x1="8.0518" y1="1.397" x2="7.5438" y2="1.651" width="0.1524" layer="21"/>
<wire x1="8.0518" y1="-5.461" x2="7.5438" y2="-5.207" width="0.1524" layer="21"/>
<wire x1="7.5438" y1="-5.207" x2="7.5438" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="8.0518" y1="-3.81" x2="7.5438" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="7.5438" y1="-4.064" x2="7.5438" y2="-5.207" width="0.1524" layer="21"/>
<wire x1="8.0518" y1="-3.81" x2="8.0518" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-6.223" x2="-2.032" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="2.032" y1="0.254" x2="2.032" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-6.223" x2="2.032" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-6.223" x2="2.9718" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="-6.223" x2="-2.9718" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="-6.223" x2="-2.032" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-7.0358" y1="0.254" x2="-7.0358" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-7.5438" y1="-6.223" x2="-7.0358" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-7.0358" y1="-6.223" x2="-2.9718" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-4.318" x2="2.032" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-4.318" x2="-2.032" y2="0.254" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-4.318" x2="2.032" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="-4.318" x2="-7.0358" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="-4.318" x2="-2.9718" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-7.0358" y1="-4.318" x2="-7.0358" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-3.683" x2="1.651" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-3.683" x2="-1.651" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="-3.683" x2="-1.651" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-3.3528" y1="-3.683" x2="-3.3528" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-3.3528" y1="-3.683" x2="-6.6548" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-6.6548" y1="-3.683" x2="-6.6548" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-6.6548" y1="-0.508" x2="-6.2738" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="-0.508" x2="-3.7338" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="-0.508" x2="-1.27" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-0.508" x2="1.27" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-7.5438" y1="-6.223" x2="-7.5438" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.5438" y1="0.635" x2="-7.5438" y2="3.175" width="0.1524" layer="21"/>
<wire x1="7.5438" y1="1.651" x2="7.5438" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.5438" y1="0.635" x2="7.5438" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-7.5438" y1="3.175" x2="7.5438" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-7.5438" y1="3.175" x2="-7.5438" y2="6.223" width="0.1524" layer="21"/>
<wire x1="7.5438" y1="3.175" x2="7.5438" y2="1.651" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="3.429" x2="-2.032" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="5.969" x2="2.032" y2="5.969" width="0.1524" layer="21"/>
<wire x1="2.032" y1="5.969" x2="2.032" y2="3.429" width="0.1524" layer="21"/>
<wire x1="2.032" y1="3.429" x2="-2.032" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="3.429" x2="-2.9718" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="3.429" x2="-7.0358" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-7.0358" y1="3.429" x2="-7.0358" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="5.969" x2="-7.0358" y2="5.969" width="0.1524" layer="21"/>
<wire x1="1.4682" y1="4.0849" x2="1.5239" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="-1.4732" y1="4.1656" x2="1.5146" y2="4.1189" width="0.1524" layer="21" curve="75.530157"/>
<wire x1="-1.6256" y1="5.0038" x2="1.5288" y2="5.0588" width="0.1524" layer="21" curve="-100.022513"/>
<wire x1="-1.5748" y1="5.0546" x2="-1.4311" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="-1.6256" y1="4.445" x2="1.4224" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-1.4986" y1="4.318" x2="1.5494" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-3.5102" y1="4.0849" x2="-3.4545" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="-6.4516" y1="4.1656" x2="-3.4638" y2="4.1188" width="0.1524" layer="21" curve="75.528719"/>
<wire x1="-6.604" y1="5.0038" x2="-3.4496" y2="5.0588" width="0.1524" layer="21" curve="-100.022513"/>
<wire x1="-6.5532" y1="5.0546" x2="-6.4095" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="-6.604" y1="4.445" x2="-3.556" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="4.318" x2="-3.429" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-7.0358" y1="0.254" x2="-6.6548" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="0.254" x2="-3.3528" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-3.3528" y1="0.254" x2="-6.6548" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-7.5438" y1="0.635" x2="-6.6548" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.6548" y1="0.635" x2="-3.3528" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="0.635" x2="-1.651" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.5438" y1="0.635" x2="6.6548" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.651" y1="0.635" x2="-1.651" y2="0.635" width="0.1524" layer="51"/>
<wire x1="2.032" y1="0.254" x2="1.651" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="0.254" x2="-1.651" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="0.254" x2="1.651" y2="0.254" width="0.1524" layer="51"/>
<wire x1="6.6548" y1="0.635" x2="3.3782" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.6764" y1="0.635" x2="3.3528" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.0358" y1="-6.223" x2="7.5438" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="7.0358" y1="0.254" x2="7.0358" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="7.0358" y1="-4.318" x2="7.0358" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="7.0358" y1="0.254" x2="6.6548" y2="0.254" width="0.1524" layer="21"/>
<wire x1="3.3782" y1="0.254" x2="6.6548" y2="0.254" width="0.1524" layer="51"/>
<wire x1="2.9718" y1="0.254" x2="3.3782" y2="0.254" width="0.1524" layer="21"/>
<wire x1="2.9718" y1="-6.223" x2="2.9718" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="2.9718" y1="-6.223" x2="7.0358" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="2.9718" y1="-4.318" x2="7.0358" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="6.6548" y1="-3.683" x2="3.3528" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="6.6548" y1="-3.683" x2="6.6548" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="6.6548" y1="-0.508" x2="6.2738" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="-0.508" x2="3.7084" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="-3.683" x2="3.3528" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="2.9718" y1="3.429" x2="2.9718" y2="5.969" width="0.1524" layer="21"/>
<wire x1="2.9718" y1="5.969" x2="7.0358" y2="5.969" width="0.1524" layer="21"/>
<wire x1="7.0358" y1="5.969" x2="7.0358" y2="3.429" width="0.1524" layer="21"/>
<wire x1="7.0358" y1="3.429" x2="2.9718" y2="3.429" width="0.1524" layer="21"/>
<wire x1="6.472" y1="4.0849" x2="6.5277" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="3.5306" y1="4.1656" x2="6.5184" y2="4.1189" width="0.1524" layer="21" curve="75.530157"/>
<wire x1="3.3782" y1="5.0038" x2="6.5324" y2="5.0586" width="0.1524" layer="21" curve="-100.0232"/>
<wire x1="3.429" y1="5.0546" x2="3.5727" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="3.3782" y1="4.445" x2="6.4262" y2="5.08" width="0.1524" layer="21"/>
<wire x1="3.5052" y1="4.318" x2="6.5532" y2="4.953" width="0.1524" layer="21"/>
<wire x1="2.9718" y1="-4.318" x2="2.9718" y2="0.254" width="0.1524" layer="21"/>
<pad name="1" x="-5.0038" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="3" x="5.0038" y="0" drill="1.3208" shape="long" rot="R90"/>
<text x="-7.5692" y="6.731" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-7.5692" y="-8.636" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.985" y="1.27" size="1.27" layer="21" ratio="10">1</text>
<text x="-1.905" y="1.27" size="1.27" layer="21" ratio="10">2</text>
<text x="3.175" y="1.27" size="1.27" layer="21" ratio="10">3</text>
<rectangle x1="-6.2738" y1="-2.54" x2="-3.7338" y2="0.254" layer="51"/>
<rectangle x1="-1.27" y1="-2.54" x2="1.27" y2="0.254" layer="51"/>
<rectangle x1="3.7338" y1="-2.54" x2="6.2738" y2="0.254" layer="51"/>
</package>
<package name="AK300/8" urn="urn:adsk.eagle:footprint:9849/1" library_version="1">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;</description>
<wire x1="-10.0076" y1="6.223" x2="-20.0914" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-14.5288" y1="-6.223" x2="-14.5288" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-10.4648" y1="0.254" x2="-10.4648" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-14.5288" y1="-6.223" x2="-10.4648" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-15.4686" y1="-6.223" x2="-15.4686" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-15.4686" y1="-6.223" x2="-14.5288" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-19.5326" y1="0.254" x2="-19.5326" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-20.0914" y1="-6.223" x2="-19.5326" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-19.5326" y1="-6.223" x2="-15.4686" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-14.5288" y1="-4.318" x2="-10.4648" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-14.5288" y1="-4.318" x2="-14.5288" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-10.4648" y1="-4.318" x2="-10.4648" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-15.4686" y1="-4.318" x2="-19.5326" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-15.4686" y1="-4.318" x2="-15.4686" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-19.5326" y1="-4.318" x2="-19.5326" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-10.8458" y1="-3.683" x2="-10.8458" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-10.8458" y1="-3.683" x2="-14.1478" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-14.1478" y1="-3.683" x2="-14.1478" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-15.8496" y1="-3.683" x2="-15.8496" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-15.8496" y1="-3.683" x2="-19.1516" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-19.1516" y1="-3.683" x2="-19.1516" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-19.1516" y1="-0.508" x2="-18.7706" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-15.8496" y1="-0.508" x2="-16.2306" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-14.1478" y1="-0.508" x2="-13.7668" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-10.8458" y1="-0.508" x2="-11.2268" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-20.0914" y1="-6.223" x2="-20.0914" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-20.0914" y1="0.635" x2="-20.0914" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-20.0914" y1="3.175" x2="-10.0076" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-20.0914" y1="3.175" x2="-20.0914" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-14.5288" y1="3.429" x2="-14.5288" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-14.5288" y1="5.969" x2="-10.4648" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-10.4648" y1="5.969" x2="-10.4648" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-10.4648" y1="3.429" x2="-14.5288" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-15.4686" y1="3.429" x2="-15.4686" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-15.4686" y1="3.429" x2="-19.5326" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-19.5326" y1="3.429" x2="-19.5326" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-15.4686" y1="5.969" x2="-19.5326" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-11.0286" y1="4.0849" x2="-10.9729" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="-13.97" y1="4.1656" x2="-10.9822" y2="4.1188" width="0.1524" layer="21" curve="75.528719"/>
<wire x1="-14.1224" y1="5.0038" x2="-10.968" y2="5.0588" width="0.1524" layer="21" curve="-100.022513"/>
<wire x1="-14.0716" y1="5.0546" x2="-13.9279" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="-14.1224" y1="4.445" x2="-11.0744" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-13.9954" y1="4.318" x2="-10.9474" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-16.0324" y1="4.0849" x2="-15.9767" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="-18.9738" y1="4.1656" x2="-15.986" y2="4.1188" width="0.1524" layer="21" curve="75.528719"/>
<wire x1="-19.1262" y1="5.0038" x2="-15.9718" y2="5.0588" width="0.1524" layer="21" curve="-100.022513"/>
<wire x1="-19.0754" y1="5.0546" x2="-18.9317" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="-19.1262" y1="4.445" x2="-16.0782" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-18.9992" y1="4.318" x2="-15.9512" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-19.5326" y1="0.254" x2="-19.1516" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-15.4686" y1="0.254" x2="-15.8496" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-15.8496" y1="0.254" x2="-19.1516" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-20.0914" y1="0.635" x2="-19.1516" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-19.1516" y1="0.635" x2="-15.8496" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-15.8496" y1="0.635" x2="-14.1478" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.8458" y1="0.635" x2="-14.1478" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-10.4648" y1="0.254" x2="-10.8458" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-14.5288" y1="0.254" x2="-14.1478" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-14.1478" y1="0.254" x2="-10.8458" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-10.4648" y1="-6.223" x2="-10.0076" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-4.5466" y1="-6.223" x2="-4.5466" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="0.254" x2="-0.4826" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-4.5466" y1="-6.223" x2="-0.4826" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-5.4864" y1="-6.223" x2="-5.4864" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-5.4864" y1="-6.223" x2="-4.5466" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-9.5504" y1="0.254" x2="-9.5504" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-10.0076" y1="-6.223" x2="-9.5504" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-9.5504" y1="-6.223" x2="-5.4864" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-4.5466" y1="-4.318" x2="-0.4826" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-4.5466" y1="-4.318" x2="-4.5466" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="-4.318" x2="-0.4826" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-5.4864" y1="-4.318" x2="-9.5504" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-5.4864" y1="-4.318" x2="-5.4864" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-9.5504" y1="-4.318" x2="-9.5504" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-0.8636" y1="-3.683" x2="-0.8636" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-0.8636" y1="-3.683" x2="-4.1656" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-4.1656" y1="-3.683" x2="-4.1656" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-5.8674" y1="-3.683" x2="-5.8674" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-5.8674" y1="-3.683" x2="-9.1694" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-9.1694" y1="-3.683" x2="-9.1694" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-9.1694" y1="-0.508" x2="-8.7884" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-5.8674" y1="-0.508" x2="-6.2484" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-4.1656" y1="-0.508" x2="-3.7846" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-0.508" x2="-1.2446" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-10.0076" y1="-6.223" x2="-10.0076" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.0076" y1="0.635" x2="-10.0076" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-10.0076" y1="3.175" x2="0" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-10.0076" y1="3.175" x2="-10.0076" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-4.5466" y1="3.429" x2="-4.5466" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-4.5466" y1="5.969" x2="-0.4826" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="5.969" x2="-0.4826" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="3.429" x2="-4.5466" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-5.4864" y1="3.429" x2="-5.4864" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-5.4864" y1="3.429" x2="-9.5504" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-9.5504" y1="3.429" x2="-9.5504" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-5.4864" y1="5.969" x2="-9.5504" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-1.0464" y1="4.0849" x2="-0.9907" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="-3.9878" y1="4.1656" x2="-1" y2="4.1188" width="0.1524" layer="21" curve="75.528719"/>
<wire x1="-4.1402" y1="5.0038" x2="-0.9858" y2="5.0588" width="0.1524" layer="21" curve="-100.022513"/>
<wire x1="-4.0894" y1="5.0546" x2="-3.9457" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="-4.1402" y1="4.445" x2="-1.0922" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-4.0132" y1="4.318" x2="-0.9652" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-6.0502" y1="4.0849" x2="-5.9945" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="-8.9916" y1="4.1656" x2="-6.0038" y2="4.1188" width="0.1524" layer="21" curve="75.528719"/>
<wire x1="-9.144" y1="5.0038" x2="-5.9896" y2="5.0588" width="0.1524" layer="21" curve="-100.022513"/>
<wire x1="-9.0932" y1="5.0546" x2="-8.9495" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="-9.144" y1="4.445" x2="-6.096" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="4.318" x2="-5.969" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-9.5504" y1="0.254" x2="-9.1694" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-5.4864" y1="0.254" x2="-5.8674" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-5.8674" y1="0.254" x2="-9.1694" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-10.0076" y1="0.635" x2="-9.1694" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-9.1694" y1="0.635" x2="-5.8674" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-5.8674" y1="0.635" x2="-4.1656" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-0.8636" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-0.8636" y1="0.635" x2="-4.1656" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.4826" y1="0.254" x2="-0.8636" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-4.5466" y1="0.254" x2="-4.1656" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-4.1656" y1="0.254" x2="-0.8636" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-0.4826" y1="-6.223" x2="0" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="0" y1="-6.223" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.4864" y1="-6.223" x2="5.4864" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="9.5504" y1="0.254" x2="9.5504" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="5.4864" y1="-6.223" x2="9.5504" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="4.5466" y1="-6.223" x2="4.5466" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="4.5466" y1="-6.223" x2="5.4864" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="0.4826" y1="0.254" x2="0.4826" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="0" y1="-6.223" x2="0.4826" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="0.4826" y1="-6.223" x2="4.5466" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="5.4864" y1="-4.318" x2="9.5504" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="5.4864" y1="-4.318" x2="5.4864" y2="0.254" width="0.1524" layer="21"/>
<wire x1="9.5504" y1="-4.318" x2="9.5504" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="4.5466" y1="-4.318" x2="0.4826" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="4.5466" y1="-4.318" x2="4.5466" y2="0.254" width="0.1524" layer="21"/>
<wire x1="0.4826" y1="-4.318" x2="0.4826" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="9.1694" y1="-3.683" x2="9.1694" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="9.1694" y1="-3.683" x2="5.8674" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="5.8674" y1="-3.683" x2="5.8674" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="4.1656" y1="-3.683" x2="4.1656" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="4.1656" y1="-3.683" x2="0.8636" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="0.8636" y1="-3.683" x2="0.8636" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.8636" y1="-0.508" x2="1.2446" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="4.1656" y1="-0.508" x2="3.7846" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="5.8674" y1="-0.508" x2="6.2484" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="9.1694" y1="-0.508" x2="8.7884" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="0" y1="0.635" x2="0" y2="3.175" width="0.1524" layer="21"/>
<wire x1="0" y1="3.175" x2="10.0076" y2="3.175" width="0.1524" layer="21"/>
<wire x1="0" y1="3.175" x2="0" y2="6.223" width="0.1524" layer="21"/>
<wire x1="5.4864" y1="3.429" x2="5.4864" y2="5.969" width="0.1524" layer="21"/>
<wire x1="5.4864" y1="5.969" x2="9.5504" y2="5.969" width="0.1524" layer="21"/>
<wire x1="9.5504" y1="5.969" x2="9.5504" y2="3.429" width="0.1524" layer="21"/>
<wire x1="9.5504" y1="3.429" x2="5.4864" y2="3.429" width="0.1524" layer="21"/>
<wire x1="4.5466" y1="3.429" x2="4.5466" y2="5.969" width="0.1524" layer="21"/>
<wire x1="4.5466" y1="3.429" x2="0.4826" y2="3.429" width="0.1524" layer="21"/>
<wire x1="0.4826" y1="3.429" x2="0.4826" y2="5.969" width="0.1524" layer="21"/>
<wire x1="4.5466" y1="5.969" x2="0.4826" y2="5.969" width="0.1524" layer="21"/>
<wire x1="8.9866" y1="4.0849" x2="9.0423" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="6.0452" y1="4.1656" x2="9.033" y2="4.1189" width="0.1524" layer="21" curve="75.530157"/>
<wire x1="5.8928" y1="5.0038" x2="9.047" y2="5.0586" width="0.1524" layer="21" curve="-100.0232"/>
<wire x1="5.9436" y1="5.0546" x2="6.0873" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="5.8928" y1="4.445" x2="8.9408" y2="5.08" width="0.1524" layer="21"/>
<wire x1="6.0198" y1="4.318" x2="9.0678" y2="4.953" width="0.1524" layer="21"/>
<wire x1="3.9828" y1="4.0849" x2="4.0385" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="1.0414" y1="4.1656" x2="4.0292" y2="4.1189" width="0.1524" layer="21" curve="75.530157"/>
<wire x1="0.889" y1="5.0038" x2="4.0432" y2="5.0586" width="0.1524" layer="21" curve="-100.0232"/>
<wire x1="0.9398" y1="5.0546" x2="1.0835" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="0.889" y1="4.445" x2="3.937" y2="5.08" width="0.1524" layer="21"/>
<wire x1="1.016" y1="4.318" x2="4.064" y2="4.953" width="0.1524" layer="21"/>
<wire x1="0.4826" y1="0.254" x2="0.8636" y2="0.254" width="0.1524" layer="21"/>
<wire x1="4.5466" y1="0.254" x2="4.1656" y2="0.254" width="0.1524" layer="21"/>
<wire x1="4.1656" y1="0.254" x2="0.8636" y2="0.254" width="0.1524" layer="51"/>
<wire x1="0" y1="0.635" x2="0.8636" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0.8636" y1="0.635" x2="4.1656" y2="0.635" width="0.1524" layer="51"/>
<wire x1="4.1656" y1="0.635" x2="5.8674" y2="0.635" width="0.1524" layer="21"/>
<wire x1="9.1694" y1="0.635" x2="5.8674" y2="0.635" width="0.1524" layer="51"/>
<wire x1="9.5504" y1="0.254" x2="9.1694" y2="0.254" width="0.1524" layer="21"/>
<wire x1="5.4864" y1="0.254" x2="5.8674" y2="0.254" width="0.1524" layer="21"/>
<wire x1="5.8674" y1="0.254" x2="9.1694" y2="0.254" width="0.1524" layer="51"/>
<wire x1="9.5504" y1="-6.223" x2="10.0076" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="20.0914" y1="6.223" x2="20.0914" y2="3.175" width="0.1524" layer="21"/>
<wire x1="20.0914" y1="6.223" x2="20.5994" y2="6.223" width="0.1524" layer="21"/>
<wire x1="20.5994" y1="6.223" x2="20.5994" y2="1.397" width="0.1524" layer="21"/>
<wire x1="20.5994" y1="1.397" x2="20.0914" y2="1.651" width="0.1524" layer="21"/>
<wire x1="20.5994" y1="-5.461" x2="20.0914" y2="-5.207" width="0.1524" layer="21"/>
<wire x1="20.0914" y1="-5.207" x2="20.0914" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="20.5994" y1="-3.81" x2="20.0914" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="20.0914" y1="-4.064" x2="20.0914" y2="-5.207" width="0.1524" layer="21"/>
<wire x1="20.5994" y1="-3.81" x2="20.5994" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="15.4686" y1="-6.223" x2="15.4686" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="19.5326" y1="0.254" x2="19.5326" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="15.4686" y1="-6.223" x2="19.5326" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="19.5326" y1="-6.223" x2="20.0914" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="14.5288" y1="-6.223" x2="14.5288" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="14.5288" y1="-6.223" x2="15.4686" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="10.4648" y1="0.254" x2="10.4648" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="10.0076" y1="-6.223" x2="10.4648" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="10.4648" y1="-6.223" x2="14.5288" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="15.4686" y1="-4.318" x2="19.5326" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="15.4686" y1="-4.318" x2="15.4686" y2="0.254" width="0.1524" layer="21"/>
<wire x1="19.5326" y1="-4.318" x2="19.5326" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="14.5288" y1="-4.318" x2="10.4648" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="14.5288" y1="-4.318" x2="14.5288" y2="0.254" width="0.1524" layer="21"/>
<wire x1="10.4648" y1="-4.318" x2="10.4648" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="19.1516" y1="-3.683" x2="19.1516" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="19.1516" y1="-3.683" x2="15.8496" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="15.8496" y1="-3.683" x2="15.8496" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="14.1478" y1="-3.683" x2="14.1478" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="14.1478" y1="-3.683" x2="10.8458" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="10.8458" y1="-3.683" x2="10.8458" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="10.8458" y1="-0.508" x2="11.2268" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="14.1478" y1="-0.508" x2="13.7668" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="15.8496" y1="-0.508" x2="16.2306" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="19.1516" y1="-0.508" x2="18.7706" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="10.0076" y1="-6.223" x2="10.0076" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.0076" y1="0.635" x2="10.0076" y2="3.175" width="0.1524" layer="21"/>
<wire x1="20.0914" y1="1.651" x2="20.0914" y2="0.635" width="0.1524" layer="21"/>
<wire x1="20.0914" y1="0.635" x2="20.0914" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="10.0076" y1="3.175" x2="20.0914" y2="3.175" width="0.1524" layer="21"/>
<wire x1="10.0076" y1="3.175" x2="10.0076" y2="6.223" width="0.1524" layer="21"/>
<wire x1="20.0914" y1="3.175" x2="20.0914" y2="1.651" width="0.1524" layer="21"/>
<wire x1="15.4686" y1="3.429" x2="15.4686" y2="5.969" width="0.1524" layer="21"/>
<wire x1="15.4686" y1="5.969" x2="19.5326" y2="5.969" width="0.1524" layer="21"/>
<wire x1="19.5326" y1="5.969" x2="19.5326" y2="3.429" width="0.1524" layer="21"/>
<wire x1="19.5326" y1="3.429" x2="15.4686" y2="3.429" width="0.1524" layer="21"/>
<wire x1="14.5288" y1="3.429" x2="14.5288" y2="5.969" width="0.1524" layer="21"/>
<wire x1="14.5288" y1="3.429" x2="10.4648" y2="3.429" width="0.1524" layer="21"/>
<wire x1="10.4648" y1="3.429" x2="10.4648" y2="5.969" width="0.1524" layer="21"/>
<wire x1="14.5288" y1="5.969" x2="10.4648" y2="5.969" width="0.1524" layer="21"/>
<wire x1="18.9688" y1="4.0849" x2="19.0245" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="16.0274" y1="4.1656" x2="19.0152" y2="4.1189" width="0.1524" layer="21" curve="75.530157"/>
<wire x1="15.875" y1="5.0038" x2="19.0292" y2="5.0586" width="0.1524" layer="21" curve="-100.0232"/>
<wire x1="15.9258" y1="5.0546" x2="16.0695" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="15.875" y1="4.445" x2="18.923" y2="5.08" width="0.1524" layer="21"/>
<wire x1="16.002" y1="4.318" x2="19.05" y2="4.953" width="0.1524" layer="21"/>
<wire x1="13.965" y1="4.0849" x2="14.0207" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="11.0236" y1="4.1656" x2="14.0114" y2="4.1189" width="0.1524" layer="21" curve="75.530157"/>
<wire x1="10.8712" y1="5.0038" x2="14.0254" y2="5.0586" width="0.1524" layer="21" curve="-100.0232"/>
<wire x1="10.922" y1="5.0546" x2="11.0657" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="10.8712" y1="4.445" x2="13.9192" y2="5.08" width="0.1524" layer="21"/>
<wire x1="10.9982" y1="4.318" x2="14.0462" y2="4.953" width="0.1524" layer="21"/>
<wire x1="10.4648" y1="0.254" x2="10.8458" y2="0.254" width="0.1524" layer="21"/>
<wire x1="14.5288" y1="0.254" x2="14.1478" y2="0.254" width="0.1524" layer="21"/>
<wire x1="14.1478" y1="0.254" x2="10.8458" y2="0.254" width="0.1524" layer="51"/>
<wire x1="10.0076" y1="0.635" x2="10.8458" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.8458" y1="0.635" x2="14.1478" y2="0.635" width="0.1524" layer="51"/>
<wire x1="14.1478" y1="0.635" x2="15.8496" y2="0.635" width="0.1524" layer="21"/>
<wire x1="20.0914" y1="0.635" x2="19.1516" y2="0.635" width="0.1524" layer="21"/>
<wire x1="19.1516" y1="0.635" x2="15.8496" y2="0.635" width="0.1524" layer="51"/>
<wire x1="19.5326" y1="0.254" x2="19.1516" y2="0.254" width="0.1524" layer="21"/>
<wire x1="15.4686" y1="0.254" x2="15.8496" y2="0.254" width="0.1524" layer="21"/>
<wire x1="15.8496" y1="0.254" x2="19.1516" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-10.0076" y1="0.635" x2="-10.8458" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="6.223" x2="-10.0076" y2="6.223" width="0.1524" layer="21"/>
<wire x1="20.0914" y1="6.223" x2="10.0076" y2="6.223" width="0.1524" layer="21"/>
<wire x1="10.0076" y1="0.635" x2="9.1694" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.0076" y1="6.223" x2="0" y2="6.223" width="0.1524" layer="21"/>
<pad name="1" x="-17.5006" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="2" x="-12.4968" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="3" x="-7.5184" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="4" x="-2.5146" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="5" x="2.5146" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="6" x="7.5184" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="7" x="12.4968" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="8" x="17.5006" y="0" drill="1.3208" shape="long" rot="R90"/>
<text x="-20.066" y="6.731" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-20.066" y="-8.636" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-19.4818" y="1.27" size="1.27" layer="21" ratio="10">1</text>
<text x="-14.4018" y="1.27" size="1.27" layer="21" ratio="10">2</text>
<text x="-9.4996" y="1.27" size="1.27" layer="21" ratio="10">3</text>
<text x="-4.4196" y="1.27" size="1.27" layer="21" ratio="10">4</text>
<text x="0.5334" y="1.27" size="1.27" layer="21" ratio="10">5</text>
<text x="5.6134" y="1.27" size="1.27" layer="21" ratio="10">6</text>
<text x="10.5156" y="1.27" size="1.27" layer="21" ratio="10">7</text>
<text x="15.5956" y="1.27" size="1.27" layer="21" ratio="10">8</text>
<rectangle x1="-18.7706" y1="-2.54" x2="-16.2306" y2="0.254" layer="51"/>
<rectangle x1="-13.7668" y1="-2.54" x2="-11.2268" y2="0.254" layer="51"/>
<rectangle x1="-8.7884" y1="-2.54" x2="-6.2484" y2="0.254" layer="51"/>
<rectangle x1="-3.7846" y1="-2.54" x2="-1.2446" y2="0.254" layer="51"/>
<rectangle x1="1.2446" y1="-2.54" x2="3.7846" y2="0.254" layer="51"/>
<rectangle x1="6.2484" y1="-2.54" x2="8.7884" y2="0.254" layer="51"/>
<rectangle x1="11.2268" y1="-2.54" x2="13.7668" y2="0.254" layer="51"/>
<rectangle x1="16.2306" y1="-2.54" x2="18.7706" y2="0.254" layer="51"/>
</package>
<package name="AK300/4" urn="urn:adsk.eagle:footprint:9844/1" library_version="1">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;</description>
<wire x1="-10.0838" y1="6.223" x2="0" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-4.4958" y1="-6.223" x2="-4.4958" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-0.4318" y1="0.254" x2="-0.4318" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-4.4958" y1="-6.223" x2="-0.4318" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-0.4318" y1="-6.223" x2="0" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="-6.223" x2="-5.5118" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="-6.223" x2="-4.4958" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-9.5758" y1="0.254" x2="-9.5758" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-10.0838" y1="-6.223" x2="-9.5758" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-9.5758" y1="-6.223" x2="-5.5118" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-4.4958" y1="-4.318" x2="-0.4318" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-4.4958" y1="-4.318" x2="-4.4958" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-0.4318" y1="-4.318" x2="-0.4318" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="-4.318" x2="-9.5758" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="-4.318" x2="-5.5118" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-9.5758" y1="-4.318" x2="-9.5758" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-0.8128" y1="-3.683" x2="-0.8128" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-0.8128" y1="-3.683" x2="-4.1148" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-4.1148" y1="-3.683" x2="-4.1148" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-5.8928" y1="-3.683" x2="-5.8928" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-5.8928" y1="-3.683" x2="-9.1948" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-9.1948" y1="-3.683" x2="-9.1948" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-9.1948" y1="-0.508" x2="-8.8138" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-5.8928" y1="-0.508" x2="-6.2738" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-4.1148" y1="-0.508" x2="-3.7338" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-0.8128" y1="-0.508" x2="-1.1938" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-10.0838" y1="-6.223" x2="-10.0838" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.0838" y1="0.635" x2="-10.0838" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-10.0838" y1="3.175" x2="0" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-10.0838" y1="3.175" x2="-10.0838" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-4.4958" y1="3.429" x2="-4.4958" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-4.4958" y1="5.969" x2="-0.4318" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-0.4318" y1="5.969" x2="-0.4318" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-0.4318" y1="3.429" x2="-4.4958" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="3.429" x2="-5.5118" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="3.429" x2="-9.5758" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-9.5758" y1="3.429" x2="-9.5758" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="5.969" x2="-9.5758" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-0.9956" y1="4.0849" x2="-0.9399" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="-3.937" y1="4.1656" x2="-0.9492" y2="4.1188" width="0.1524" layer="21" curve="75.528719"/>
<wire x1="-4.0894" y1="5.0038" x2="-0.935" y2="5.0588" width="0.1524" layer="21" curve="-100.022513"/>
<wire x1="-4.0386" y1="5.0546" x2="-3.8949" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="-4.0894" y1="4.445" x2="-1.0414" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-3.9624" y1="4.318" x2="-0.9144" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-6.0756" y1="4.0849" x2="-6.0199" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="-9.017" y1="4.1656" x2="-6.0292" y2="4.1188" width="0.1524" layer="21" curve="75.528719"/>
<wire x1="-9.1694" y1="5.0038" x2="-6.015" y2="5.0588" width="0.1524" layer="21" curve="-100.022513"/>
<wire x1="-9.1186" y1="5.0546" x2="-8.9749" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="-9.1694" y1="4.445" x2="-6.1214" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-9.0424" y1="4.318" x2="-5.9944" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-9.5758" y1="0.254" x2="-9.0678" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="0.254" x2="-5.8928" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-5.8928" y1="0.254" x2="-9.0678" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-10.0838" y1="0.635" x2="-9.0678" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-9.0678" y1="0.635" x2="-5.8928" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-5.8928" y1="0.635" x2="-4.1148" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-0.9398" y1="0.635" x2="-4.1148" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.4318" y1="0.254" x2="-0.9398" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-4.4958" y1="0.254" x2="-4.1148" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-4.1148" y1="0.254" x2="-0.9398" y2="0.254" width="0.1524" layer="51"/>
<wire x1="10.0838" y1="6.223" x2="10.0838" y2="3.175" width="0.1524" layer="21"/>
<wire x1="10.0838" y1="6.223" x2="10.5918" y2="6.223" width="0.1524" layer="21"/>
<wire x1="10.5918" y1="6.223" x2="10.5918" y2="1.397" width="0.1524" layer="21"/>
<wire x1="10.5918" y1="1.397" x2="10.0838" y2="1.651" width="0.1524" layer="21"/>
<wire x1="10.5918" y1="-5.461" x2="10.0838" y2="-5.207" width="0.1524" layer="21"/>
<wire x1="10.0838" y1="-5.207" x2="10.0838" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="10.5918" y1="-3.81" x2="10.0838" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="10.0838" y1="-4.064" x2="10.0838" y2="-5.207" width="0.1524" layer="21"/>
<wire x1="10.5918" y1="-3.81" x2="10.5918" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="5.5118" y1="-6.223" x2="5.5118" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="9.5758" y1="0.254" x2="9.5758" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="5.5118" y1="-6.223" x2="9.5758" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="9.5758" y1="-6.223" x2="10.0838" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="4.4958" y1="-6.223" x2="4.4958" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="4.4958" y1="-6.223" x2="5.5118" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="0.4318" y1="0.254" x2="0.4318" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="0.4318" y1="-6.223" x2="4.4958" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="5.5118" y1="-4.318" x2="9.5758" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="5.5118" y1="-4.318" x2="5.5118" y2="0.254" width="0.1524" layer="21"/>
<wire x1="9.5758" y1="-4.318" x2="9.5758" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="4.4958" y1="-4.318" x2="0.4318" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="4.4958" y1="-4.318" x2="4.4958" y2="0.254" width="0.1524" layer="21"/>
<wire x1="0.4318" y1="-4.318" x2="0.4318" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="9.1948" y1="-3.683" x2="9.1948" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="9.1948" y1="-3.683" x2="5.8928" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="5.8928" y1="-3.683" x2="5.8928" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="4.1148" y1="-3.683" x2="4.1148" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="4.1148" y1="-3.683" x2="0.8128" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="0.8128" y1="-3.683" x2="0.8128" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.8128" y1="-0.508" x2="1.1938" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="4.1148" y1="-0.508" x2="3.7338" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="5.8928" y1="-0.508" x2="6.2738" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="9.1948" y1="-0.508" x2="8.8138" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="0" y1="-6.223" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="3.175" width="0.1524" layer="21"/>
<wire x1="10.0838" y1="1.651" x2="10.0838" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.0838" y1="0.635" x2="10.0838" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="0" y1="3.175" x2="10.0838" y2="3.175" width="0.1524" layer="21"/>
<wire x1="0" y1="3.175" x2="0" y2="6.223" width="0.1524" layer="21"/>
<wire x1="10.0838" y1="3.175" x2="10.0838" y2="1.651" width="0.1524" layer="21"/>
<wire x1="5.5118" y1="3.429" x2="5.5118" y2="5.969" width="0.1524" layer="21"/>
<wire x1="5.5118" y1="5.969" x2="9.5758" y2="5.969" width="0.1524" layer="21"/>
<wire x1="9.5758" y1="5.969" x2="9.5758" y2="3.429" width="0.1524" layer="21"/>
<wire x1="9.5758" y1="3.429" x2="5.5118" y2="3.429" width="0.1524" layer="21"/>
<wire x1="4.4958" y1="3.429" x2="4.4958" y2="5.969" width="0.1524" layer="21"/>
<wire x1="4.4958" y1="3.429" x2="0.4318" y2="3.429" width="0.1524" layer="21"/>
<wire x1="0.4318" y1="3.429" x2="0.4318" y2="5.969" width="0.1524" layer="21"/>
<wire x1="4.4958" y1="5.969" x2="0.4318" y2="5.969" width="0.1524" layer="21"/>
<wire x1="9.012" y1="4.0849" x2="9.0677" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="6.0706" y1="4.1656" x2="9.0584" y2="4.1189" width="0.1524" layer="21" curve="75.530157"/>
<wire x1="5.9182" y1="5.0038" x2="9.0724" y2="5.0586" width="0.1524" layer="21" curve="-100.0232"/>
<wire x1="5.969" y1="5.0546" x2="6.1127" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="5.9182" y1="4.445" x2="8.9662" y2="5.08" width="0.1524" layer="21"/>
<wire x1="6.0452" y1="4.318" x2="9.0932" y2="4.953" width="0.1524" layer="21"/>
<wire x1="3.932" y1="4.0849" x2="3.9877" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="0.9906" y1="4.1656" x2="3.9784" y2="4.1189" width="0.1524" layer="21" curve="75.530157"/>
<wire x1="0.8382" y1="5.0038" x2="3.9924" y2="5.0586" width="0.1524" layer="21" curve="-100.0232"/>
<wire x1="0.889" y1="5.0546" x2="1.0327" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="0.8382" y1="4.445" x2="3.8862" y2="5.08" width="0.1524" layer="21"/>
<wire x1="0.9652" y1="4.318" x2="4.0132" y2="4.953" width="0.1524" layer="21"/>
<wire x1="0.4318" y1="0.254" x2="0.9398" y2="0.254" width="0.1524" layer="21"/>
<wire x1="4.4958" y1="0.254" x2="4.1148" y2="0.254" width="0.1524" layer="21"/>
<wire x1="4.1148" y1="0.254" x2="0.9398" y2="0.254" width="0.1524" layer="51"/>
<wire x1="0" y1="0.635" x2="0.9398" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0.9398" y1="0.635" x2="4.1148" y2="0.635" width="0.1524" layer="51"/>
<wire x1="4.1148" y1="0.635" x2="5.8928" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.0838" y1="0.635" x2="9.0678" y2="0.635" width="0.1524" layer="21"/>
<wire x1="9.0678" y1="0.635" x2="5.8928" y2="0.635" width="0.1524" layer="51"/>
<wire x1="9.5758" y1="0.254" x2="9.0678" y2="0.254" width="0.1524" layer="21"/>
<wire x1="5.5118" y1="0.254" x2="5.8928" y2="0.254" width="0.1524" layer="21"/>
<wire x1="5.8928" y1="0.254" x2="9.0678" y2="0.254" width="0.1524" layer="51"/>
<wire x1="0" y1="-6.223" x2="0.4318" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-0.9398" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.0838" y1="6.223" x2="0" y2="6.223" width="0.1524" layer="21"/>
<pad name="1" x="-7.493" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="2" x="-2.5146" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="3" x="2.5146" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="4" x="7.493" y="0" drill="1.3208" shape="long" rot="R90"/>
<text x="-10.0838" y="6.731" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.0838" y="-8.636" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-9.525" y="1.27" size="1.27" layer="21" ratio="10">1</text>
<text x="-4.445" y="1.27" size="1.27" layer="21" ratio="10">2</text>
<text x="0.635" y="1.27" size="1.27" layer="21" ratio="10">3</text>
<text x="5.715" y="1.27" size="1.27" layer="21" ratio="10">4</text>
<rectangle x1="-8.8138" y1="-2.54" x2="-6.2738" y2="0.254" layer="51"/>
<rectangle x1="-3.7338" y1="-2.54" x2="-1.1938" y2="0.254" layer="51"/>
<rectangle x1="1.1938" y1="-2.54" x2="3.7338" y2="0.254" layer="51"/>
<rectangle x1="6.2738" y1="-2.54" x2="8.8138" y2="0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="AK300/2" urn="urn:adsk.eagle:package:9881/1" type="box" library_version="1">
<description>CONNECTOR</description>
<packageinstances>
<packageinstance name="AK300/2"/>
</packageinstances>
</package3d>
<package3d name="AK300/3" urn="urn:adsk.eagle:package:9878/1" type="box" library_version="1">
<description>CONNECTOR</description>
<packageinstances>
<packageinstance name="AK300/3"/>
</packageinstances>
</package3d>
<package3d name="AK300/8" urn="urn:adsk.eagle:package:9885/1" type="box" library_version="1">
<description>CONNECTOR</description>
<packageinstances>
<packageinstance name="AK300/8"/>
</packageinstances>
</package3d>
<package3d name="AK300/4" urn="urn:adsk.eagle:package:9879/1" type="box" library_version="1">
<description>CONNECTOR</description>
<packageinstances>
<packageinstance name="AK300/4"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="KL" urn="urn:adsk.eagle:symbol:9841/1" library_version="1">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="-1.27" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="KLV" urn="urn:adsk.eagle:symbol:9842/1" library_version="1">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="-1.27" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<text x="-3.81" y="-3.683" size="1.778" layer="96">&gt;VALUE</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="AK300/2" urn="urn:adsk.eagle:component:9912/1" prefix="X" uservalue="yes" library_version="1">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="5.08" addlevel="always"/>
<gate name="-2" symbol="KLV" x="0" y="0" addlevel="always"/>
</gates>
<devices>
<device name="" package="AK300/2">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:9881/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="AK300/3" urn="urn:adsk.eagle:component:9917/1" prefix="X" uservalue="yes" library_version="1">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="5.08" addlevel="always"/>
<gate name="-2" symbol="KL" x="0" y="0" addlevel="always"/>
<gate name="-3" symbol="KLV" x="0" y="-5.08" addlevel="always"/>
</gates>
<devices>
<device name="" package="AK300/3">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
<connect gate="-3" pin="KL" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:9878/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="AK300/8" urn="urn:adsk.eagle:component:9915/1" prefix="X" uservalue="yes" library_version="1">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="17.78" addlevel="always"/>
<gate name="-2" symbol="KL" x="0" y="12.7" addlevel="always"/>
<gate name="-3" symbol="KL" x="0" y="7.62" addlevel="always"/>
<gate name="-4" symbol="KL" x="0" y="2.54" addlevel="always"/>
<gate name="-5" symbol="KL" x="0" y="-2.54" addlevel="always"/>
<gate name="-6" symbol="KL" x="0" y="-7.62" addlevel="always"/>
<gate name="-7" symbol="KL" x="0" y="-12.7" addlevel="always"/>
<gate name="-8" symbol="KLV" x="0" y="-17.78" addlevel="always"/>
</gates>
<devices>
<device name="" package="AK300/8">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
<connect gate="-3" pin="KL" pad="3"/>
<connect gate="-4" pin="KL" pad="4"/>
<connect gate="-5" pin="KL" pad="5"/>
<connect gate="-6" pin="KL" pad="6"/>
<connect gate="-7" pin="KL" pad="7"/>
<connect gate="-8" pin="KL" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:9885/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="AK300/4" urn="urn:adsk.eagle:component:9909/1" prefix="X" uservalue="yes" library_version="1">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="7.62" addlevel="always"/>
<gate name="-2" symbol="KL" x="0" y="2.54" addlevel="always"/>
<gate name="-3" symbol="KL" x="0" y="-2.54" addlevel="always"/>
<gate name="-4" symbol="KLV" x="0" y="-7.62" addlevel="always"/>
</gates>
<devices>
<device name="" package="AK300/4">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
<connect gate="-3" pin="KL" pad="3"/>
<connect gate="-4" pin="KL" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:9879/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="VCC" urn="urn:adsk.eagle:symbol:26928/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC" urn="urn:adsk.eagle:component:26957/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="display-hp" urn="urn:adsk.eagle:library:212">
<description>&lt;b&gt;Hewlett Packard LED Displays&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="HDSP-A" urn="urn:adsk.eagle:footprint:12955/1" library_version="1">
<description>&lt;b&gt;LED DISPLAY&lt;/b&gt;&lt;p&gt;
 8-mm 1 character 7 segment, decimal point right</description>
<wire x1="-3.81" y1="5.715" x2="-3.81" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-6.35" x2="-3.81" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="2.794" y1="-3.683" x2="3.048" y2="-3.683" width="0.3048" layer="51"/>
<wire x1="3.81" y1="6.35" x2="3.81" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="5.715" x2="-3.175" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="6.35" x2="3.81" y2="6.35" width="0.1524" layer="21"/>
<wire x1="2.3368" y1="3.1242" x2="2.032" y2="2.8194" width="0.254" layer="51"/>
<wire x1="2.032" y1="2.8194" x2="1.6256" y2="0.6096" width="0.254" layer="51"/>
<wire x1="1.6256" y1="0.6096" x2="1.905" y2="0.3302" width="0.254" layer="51"/>
<wire x1="1.905" y1="0.3302" x2="2.159" y2="0.5842" width="0.254" layer="51"/>
<wire x1="2.159" y1="0.5842" x2="2.54" y2="2.921" width="0.254" layer="51"/>
<wire x1="2.54" y1="2.921" x2="2.3368" y2="3.1242" width="0.254" layer="51"/>
<wire x1="2.032" y1="3.429" x2="1.778" y2="3.175" width="0.254" layer="51"/>
<wire x1="1.778" y1="3.175" x2="-0.762" y2="3.175" width="0.254" layer="51"/>
<wire x1="-0.762" y1="3.175" x2="-1.016" y2="3.429" width="0.254" layer="51"/>
<wire x1="-1.016" y1="3.429" x2="-0.762" y2="3.683" width="0.254" layer="51"/>
<wire x1="-0.762" y1="3.683" x2="1.778" y2="3.683" width="0.254" layer="51"/>
<wire x1="1.778" y1="3.683" x2="2.032" y2="3.429" width="0.254" layer="51"/>
<wire x1="-1.3208" y1="3.1242" x2="-1.016" y2="2.8194" width="0.254" layer="51"/>
<wire x1="-1.016" y1="2.8194" x2="-1.397" y2="0.6096" width="0.254" layer="51"/>
<wire x1="-1.397" y1="0.6096" x2="-1.651" y2="0.3556" width="0.254" layer="51"/>
<wire x1="-1.651" y1="0.3556" x2="-1.905" y2="0.6096" width="0.254" layer="51"/>
<wire x1="-1.905" y1="0.6096" x2="-1.524" y2="2.921" width="0.254" layer="51"/>
<wire x1="-1.524" y1="2.921" x2="-1.3208" y2="3.1242" width="0.254" layer="51"/>
<wire x1="-1.4732" y1="-0.0762" x2="-1.143" y2="0.254" width="0.254" layer="51"/>
<wire x1="-1.143" y1="0.254" x2="1.3462" y2="0.254" width="0.254" layer="51"/>
<wire x1="1.3462" y1="0.254" x2="1.5494" y2="0.0508" width="0.254" layer="51"/>
<wire x1="1.5494" y1="0.0508" x2="1.2446" y2="-0.254" width="0.254" layer="51"/>
<wire x1="1.2446" y1="-0.254" x2="-1.2954" y2="-0.254" width="0.254" layer="51"/>
<wire x1="-1.2954" y1="-0.254" x2="-1.4732" y2="-0.0762" width="0.254" layer="51"/>
<wire x1="-1.8288" y1="-0.3302" x2="-1.5748" y2="-0.5842" width="0.254" layer="51"/>
<wire x1="-2.286" y1="-3.1242" x2="-1.9558" y2="-2.794" width="0.254" layer="51"/>
<wire x1="-1.9558" y1="-2.794" x2="-1.5748" y2="-0.5842" width="0.254" layer="51"/>
<wire x1="-1.8288" y1="-0.3302" x2="-2.1082" y2="-0.6096" width="0.254" layer="51"/>
<wire x1="-2.1082" y1="-0.6096" x2="-2.4892" y2="-2.921" width="0.254" layer="51"/>
<wire x1="-2.4892" y1="-2.921" x2="-2.286" y2="-3.1242" width="0.254" layer="51"/>
<wire x1="-1.9812" y1="-3.429" x2="-1.7272" y2="-3.175" width="0.254" layer="51"/>
<wire x1="-1.7272" y1="-3.175" x2="0.8128" y2="-3.175" width="0.254" layer="51"/>
<wire x1="0.8128" y1="-3.175" x2="1.0668" y2="-3.429" width="0.254" layer="51"/>
<wire x1="1.0668" y1="-3.429" x2="0.8128" y2="-3.683" width="0.254" layer="51"/>
<wire x1="0.8128" y1="-3.683" x2="-1.7272" y2="-3.683" width="0.254" layer="51"/>
<wire x1="-1.7272" y1="-3.683" x2="-1.9812" y2="-3.429" width="0.254" layer="51"/>
<wire x1="1.7018" y1="-0.4064" x2="1.4478" y2="-0.6604" width="0.254" layer="51"/>
<wire x1="1.4478" y1="-0.6604" x2="1.0668" y2="-2.8194" width="0.254" layer="51"/>
<wire x1="1.0668" y1="-2.8194" x2="1.3716" y2="-3.1242" width="0.254" layer="51"/>
<wire x1="1.3716" y1="-3.1242" x2="1.5748" y2="-2.921" width="0.254" layer="51"/>
<wire x1="1.5748" y1="-2.921" x2="1.9558" y2="-0.6604" width="0.254" layer="51"/>
<wire x1="1.9558" y1="-0.6604" x2="1.7018" y2="-0.4064" width="0.254" layer="51"/>
<wire x1="2.286" y1="2.794" x2="1.905" y2="0.635" width="0.4064" layer="51"/>
<wire x1="1.778" y1="3.429" x2="-0.762" y2="3.429" width="0.4064" layer="51"/>
<wire x1="-1.27" y1="2.794" x2="-1.651" y2="0.635" width="0.4064" layer="51"/>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.4064" layer="51"/>
<wire x1="1.651" y1="-0.762" x2="1.27" y2="-2.794" width="0.4064" layer="51"/>
<wire x1="0.762" y1="-3.429" x2="-1.651" y2="-3.429" width="0.4064" layer="51"/>
<wire x1="-2.286" y1="-2.921" x2="-1.905" y2="-0.635" width="0.4064" layer="51"/>
<circle x="2.921" y="-3.683" radius="0.254" width="0.3048" layer="51"/>
<pad name="1" x="-2.54" y="5.08" drill="0.8128" shape="long"/>
<pad name="2" x="-2.54" y="2.54" drill="0.8128" shape="long"/>
<pad name="3" x="-2.54" y="0" drill="0.8128" shape="long"/>
<pad name="4" x="-2.54" y="-2.54" drill="0.8128" shape="long"/>
<pad name="5" x="-2.54" y="-5.08" drill="0.8128" shape="long"/>
<pad name="6" x="2.54" y="-5.08" drill="0.8128" shape="long"/>
<pad name="7" x="2.54" y="-2.54" drill="0.8128" shape="long"/>
<pad name="8" x="2.54" y="0" drill="0.8128" shape="long"/>
<pad name="9" x="2.54" y="2.54" drill="0.8128" shape="long"/>
<pad name="10" x="2.54" y="5.08" drill="0.8128" shape="long"/>
<text x="-3.81" y="6.8072" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-7.9248" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="HDSP-E" urn="urn:adsk.eagle:footprint:12960/1" library_version="1">
<description>&lt;b&gt;LED DISPLAY&lt;/b&gt;&lt;p&gt;
 10-mm 1 character 7 segment, decimal point right</description>
<wire x1="4.953" y1="-6.477" x2="-4.953" y2="-6.477" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-4.699" x2="3.175" y2="-4.699" width="0.3048" layer="51"/>
<wire x1="4.953" y1="6.477" x2="4.953" y2="-6.477" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-6.477" x2="-4.953" y2="6.477" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="6.477" x2="4.953" y2="6.477" width="0.1524" layer="21"/>
<wire x1="3.048" y1="4.3942" x2="2.6162" y2="3.9624" width="0.254" layer="51"/>
<wire x1="2.6162" y1="3.9624" x2="2.0066" y2="0.7366" width="0.254" layer="51"/>
<wire x1="2.0066" y1="0.7366" x2="2.413" y2="0.3302" width="0.254" layer="51"/>
<wire x1="2.413" y1="0.3302" x2="2.794" y2="0.7112" width="0.254" layer="51"/>
<wire x1="2.794" y1="0.7112" x2="3.3782" y2="4.064" width="0.254" layer="51"/>
<wire x1="3.3782" y1="4.064" x2="3.048" y2="4.3942" width="0.254" layer="51"/>
<wire x1="2.7432" y1="4.699" x2="2.3622" y2="4.318" width="0.254" layer="51"/>
<wire x1="2.3622" y1="4.318" x2="-1.0668" y2="4.318" width="0.254" layer="51"/>
<wire x1="-1.0668" y1="4.318" x2="-1.4478" y2="4.699" width="0.254" layer="51"/>
<wire x1="-1.4478" y1="4.699" x2="-1.0668" y2="5.08" width="0.254" layer="51"/>
<wire x1="-1.0668" y1="5.08" x2="2.3622" y2="5.08" width="0.254" layer="51"/>
<wire x1="2.3622" y1="5.08" x2="2.7432" y2="4.699" width="0.254" layer="51"/>
<wire x1="-1.7526" y1="4.3942" x2="-1.3208" y2="3.9624" width="0.254" layer="51"/>
<wire x1="-1.3208" y1="3.9624" x2="-1.905" y2="0.7366" width="0.254" layer="51"/>
<wire x1="-1.905" y1="0.7366" x2="-2.413" y2="0.2286" width="0.254" layer="51"/>
<wire x1="-2.413" y1="0.2286" x2="-2.667" y2="0.4826" width="0.254" layer="51"/>
<wire x1="-2.667" y1="0.4826" x2="-2.0828" y2="4.064" width="0.254" layer="51"/>
<wire x1="-2.0828" y1="4.064" x2="-1.7526" y2="4.3942" width="0.254" layer="51"/>
<wire x1="-2.1082" y1="-0.0762" x2="-1.651" y2="0.381" width="0.254" layer="51"/>
<wire x1="-1.651" y1="0.381" x2="1.7272" y2="0.381" width="0.254" layer="51"/>
<wire x1="1.7272" y1="0.381" x2="2.0574" y2="0.0508" width="0.254" layer="51"/>
<wire x1="2.0574" y1="0.0508" x2="1.6256" y2="-0.381" width="0.254" layer="51"/>
<wire x1="1.6256" y1="-0.381" x2="-1.8034" y2="-0.381" width="0.254" layer="51"/>
<wire x1="-1.8034" y1="-0.381" x2="-2.1082" y2="-0.0762" width="0.254" layer="51"/>
<wire x1="-2.4638" y1="-0.3302" x2="-2.0828" y2="-0.7112" width="0.254" layer="51"/>
<wire x1="-3.1242" y1="-4.3942" x2="-2.667" y2="-3.937" width="0.254" layer="51"/>
<wire x1="-2.667" y1="-3.937" x2="-2.0828" y2="-0.7112" width="0.254" layer="51"/>
<wire x1="-2.4638" y1="-0.3302" x2="-2.8702" y2="-0.7366" width="0.254" layer="51"/>
<wire x1="-2.8702" y1="-0.7366" x2="-3.4544" y2="-4.064" width="0.254" layer="51"/>
<wire x1="-3.4544" y1="-4.064" x2="-3.1242" y2="-4.3942" width="0.254" layer="51"/>
<wire x1="-2.8194" y1="-4.699" x2="-2.4384" y2="-4.318" width="0.254" layer="51"/>
<wire x1="-2.4384" y1="-4.318" x2="0.9906" y2="-4.318" width="0.254" layer="51"/>
<wire x1="0.9906" y1="-4.318" x2="1.3716" y2="-4.699" width="0.254" layer="51"/>
<wire x1="1.3716" y1="-4.699" x2="0.9906" y2="-5.08" width="0.254" layer="51"/>
<wire x1="0.9906" y1="-5.08" x2="-2.4384" y2="-5.08" width="0.254" layer="51"/>
<wire x1="-2.4384" y1="-5.08" x2="-2.8194" y2="-4.699" width="0.254" layer="51"/>
<wire x1="2.3368" y1="-0.2794" x2="1.8288" y2="-0.7874" width="0.254" layer="51"/>
<wire x1="1.8288" y1="-0.7874" x2="1.2446" y2="-3.9624" width="0.254" layer="51"/>
<wire x1="1.2446" y1="-3.9624" x2="1.6764" y2="-4.3942" width="0.254" layer="51"/>
<wire x1="1.6764" y1="-4.3942" x2="2.0066" y2="-4.064" width="0.254" layer="51"/>
<wire x1="2.0066" y1="-4.064" x2="2.5908" y2="-0.5334" width="0.254" layer="51"/>
<wire x1="2.5908" y1="-0.5334" x2="2.3368" y2="-0.2794" width="0.254" layer="51"/>
<wire x1="-2.413" y1="-4.699" x2="1.016" y2="-4.699" width="0.6096" layer="51"/>
<wire x1="1.651" y1="-3.937" x2="2.286" y2="-0.635" width="0.6096" layer="51"/>
<wire x1="1.651" y1="0" x2="-1.778" y2="0" width="0.6096" layer="51"/>
<wire x1="-2.413" y1="-0.635" x2="-3.048" y2="-3.937" width="0.6096" layer="51"/>
<wire x1="-2.286" y1="0.635" x2="-1.778" y2="3.937" width="0.6096" layer="51"/>
<wire x1="-1.016" y1="4.699" x2="2.413" y2="4.699" width="0.6096" layer="51"/>
<wire x1="3.048" y1="4.064" x2="2.413" y2="0.762" width="0.6096" layer="51"/>
<circle x="3.048" y="-4.699" radius="0.254" width="0.6096" layer="51"/>
<pad name="1" x="-3.81" y="5.08" drill="0.8128"/>
<pad name="2" x="-3.81" y="2.54" drill="0.8128"/>
<pad name="3" x="-3.81" y="0" drill="0.8128"/>
<pad name="4" x="-3.81" y="-2.54" drill="0.8128"/>
<pad name="5" x="-3.81" y="-5.08" drill="0.8128"/>
<pad name="6" x="3.81" y="-5.08" drill="0.8128"/>
<pad name="7" x="3.81" y="-2.54" drill="0.8128"/>
<pad name="8" x="3.81" y="0" drill="0.8128"/>
<pad name="9" x="3.81" y="2.54" drill="0.8128"/>
<pad name="10" x="3.81" y="5.08" drill="0.8128"/>
<text x="-4.953" y="6.9342" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.953" y="-8.1788" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="HDSP-A" urn="urn:adsk.eagle:package:12999/1" type="box" library_version="1">
<description>LED DISPLAY
 8-mm 1 character 7 segment, decimal point right</description>
<packageinstances>
<packageinstance name="HDSP-A"/>
</packageinstances>
</package3d>
<package3d name="HDSP-E" urn="urn:adsk.eagle:package:13002/1" type="box" library_version="1">
<description>LED DISPLAY
 10-mm 1 character 7 segment, decimal point right</description>
<packageinstances>
<packageinstance name="HDSP-E"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="HD7-K" urn="urn:adsk.eagle:symbol:12956/1" library_version="1">
<wire x1="2.794" y1="-3.683" x2="3.048" y2="-3.683" width="0.3048" layer="94"/>
<wire x1="2.3368" y1="3.1242" x2="2.032" y2="2.8194" width="0.254" layer="94"/>
<wire x1="2.032" y1="2.8194" x2="1.6256" y2="0.6096" width="0.254" layer="94"/>
<wire x1="1.6256" y1="0.6096" x2="1.905" y2="0.3302" width="0.254" layer="94"/>
<wire x1="1.905" y1="0.3302" x2="2.159" y2="0.5842" width="0.254" layer="94"/>
<wire x1="2.159" y1="0.5842" x2="2.54" y2="2.921" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.921" x2="2.3368" y2="3.1242" width="0.254" layer="94"/>
<wire x1="2.032" y1="3.429" x2="1.778" y2="3.175" width="0.254" layer="94"/>
<wire x1="1.778" y1="3.175" x2="-0.762" y2="3.175" width="0.254" layer="94"/>
<wire x1="-0.762" y1="3.175" x2="-1.016" y2="3.429" width="0.254" layer="94"/>
<wire x1="-1.016" y1="3.429" x2="-0.762" y2="3.683" width="0.254" layer="94"/>
<wire x1="-0.762" y1="3.683" x2="1.778" y2="3.683" width="0.254" layer="94"/>
<wire x1="1.778" y1="3.683" x2="2.032" y2="3.429" width="0.254" layer="94"/>
<wire x1="-1.3208" y1="3.1242" x2="-1.016" y2="2.8194" width="0.254" layer="94"/>
<wire x1="-1.016" y1="2.8194" x2="-1.397" y2="0.6096" width="0.254" layer="94"/>
<wire x1="-1.397" y1="0.6096" x2="-1.651" y2="0.3556" width="0.254" layer="94"/>
<wire x1="-1.651" y1="0.3556" x2="-1.905" y2="0.6096" width="0.254" layer="94"/>
<wire x1="-1.905" y1="0.6096" x2="-1.524" y2="2.921" width="0.254" layer="94"/>
<wire x1="-1.524" y1="2.921" x2="-1.3208" y2="3.1242" width="0.254" layer="94"/>
<wire x1="-1.4732" y1="-0.0762" x2="-1.143" y2="0.254" width="0.254" layer="94"/>
<wire x1="-1.143" y1="0.254" x2="1.3462" y2="0.254" width="0.254" layer="94"/>
<wire x1="1.3462" y1="0.254" x2="1.5494" y2="0.0508" width="0.254" layer="94"/>
<wire x1="1.5494" y1="0.0508" x2="1.2446" y2="-0.254" width="0.254" layer="94"/>
<wire x1="1.2446" y1="-0.254" x2="-1.2954" y2="-0.254" width="0.254" layer="94"/>
<wire x1="-1.2954" y1="-0.254" x2="-1.4732" y2="-0.0762" width="0.254" layer="94"/>
<wire x1="-1.8288" y1="-0.3302" x2="-1.5748" y2="-0.5842" width="0.254" layer="94"/>
<wire x1="-2.286" y1="-3.1242" x2="-1.9558" y2="-2.794" width="0.254" layer="94"/>
<wire x1="-1.9558" y1="-2.794" x2="-1.5748" y2="-0.5842" width="0.254" layer="94"/>
<wire x1="-1.8288" y1="-0.3302" x2="-2.1082" y2="-0.6096" width="0.254" layer="94"/>
<wire x1="-2.1082" y1="-0.6096" x2="-2.4892" y2="-2.921" width="0.254" layer="94"/>
<wire x1="-2.4892" y1="-2.921" x2="-2.286" y2="-3.1242" width="0.254" layer="94"/>
<wire x1="-1.9812" y1="-3.429" x2="-1.7272" y2="-3.175" width="0.254" layer="94"/>
<wire x1="-1.7272" y1="-3.175" x2="0.8128" y2="-3.175" width="0.254" layer="94"/>
<wire x1="0.8128" y1="-3.175" x2="1.0668" y2="-3.429" width="0.254" layer="94"/>
<wire x1="1.0668" y1="-3.429" x2="0.8128" y2="-3.683" width="0.254" layer="94"/>
<wire x1="0.8128" y1="-3.683" x2="-1.7272" y2="-3.683" width="0.254" layer="94"/>
<wire x1="-1.7272" y1="-3.683" x2="-1.9812" y2="-3.429" width="0.254" layer="94"/>
<wire x1="1.7018" y1="-0.4064" x2="1.4478" y2="-0.6604" width="0.254" layer="94"/>
<wire x1="1.4478" y1="-0.6604" x2="1.0668" y2="-2.8194" width="0.254" layer="94"/>
<wire x1="1.0668" y1="-2.8194" x2="1.3716" y2="-3.1242" width="0.254" layer="94"/>
<wire x1="1.3716" y1="-3.1242" x2="1.5748" y2="-2.921" width="0.254" layer="94"/>
<wire x1="1.5748" y1="-2.921" x2="1.9558" y2="-0.6604" width="0.254" layer="94"/>
<wire x1="1.9558" y1="-0.6604" x2="1.7018" y2="-0.4064" width="0.254" layer="94"/>
<wire x1="2.286" y1="2.794" x2="1.905" y2="0.635" width="0.4064" layer="94"/>
<wire x1="1.778" y1="3.429" x2="-0.762" y2="3.429" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="2.794" x2="-1.651" y2="0.635" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.4064" layer="94"/>
<wire x1="1.651" y1="-0.762" x2="1.27" y2="-2.794" width="0.4064" layer="94"/>
<wire x1="0.762" y1="-3.429" x2="-1.651" y2="-3.429" width="0.4064" layer="94"/>
<wire x1="-2.286" y1="-2.921" x2="-1.905" y2="-0.635" width="0.4064" layer="94"/>
<wire x1="-8.89" y1="5.08" x2="8.89" y2="5.08" width="0.4064" layer="94"/>
<wire x1="8.89" y1="-5.08" x2="8.89" y2="5.08" width="0.4064" layer="94"/>
<wire x1="8.89" y1="-5.08" x2="-8.89" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-8.89" y1="5.08" x2="-8.89" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="5.08" y1="4.953" x2="5.08" y2="10.16" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="4.953" x2="-7.62" y2="10.16" width="0.1524" layer="94"/>
<wire x1="0" y1="4.953" x2="0" y2="10.16" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="4.953" x2="-5.08" y2="10.16" width="0.1524" layer="94"/>
<wire x1="7.62" y1="4.953" x2="7.62" y2="10.16" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-10.16" x2="7.62" y2="-4.953" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="4.953" x2="-2.54" y2="10.16" width="0.1524" layer="94"/>
<wire x1="2.54" y1="4.953" x2="2.54" y2="10.16" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-10.16" x2="-7.62" y2="-4.953" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-10.16" x2="5.08" y2="-4.953" width="0.1524" layer="94"/>
<circle x="2.921" y="-3.683" radius="0.254" width="0.3048" layer="94"/>
<text x="-9.525" y="-5.08" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="11.43" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<text x="4.699" y="-8.001" size="1.27" layer="95" rot="R90">CC</text>
<text x="7.239" y="-8.001" size="1.27" layer="95" rot="R90">CC</text>
<text x="-8.001" y="-8.001" size="1.27" layer="95" rot="R90">dp</text>
<text x="7.239" y="5.969" size="1.27" layer="95" rot="R90">a</text>
<text x="4.699" y="5.969" size="1.27" layer="95" rot="R90">b</text>
<text x="2.159" y="5.969" size="1.27" layer="95" rot="R90">c</text>
<text x="-0.381" y="5.969" size="1.27" layer="95" rot="R90">d</text>
<text x="-2.921" y="5.969" size="1.27" layer="95" rot="R90">e</text>
<text x="-5.461" y="5.969" size="1.27" layer="95" rot="R90">f</text>
<text x="-8.001" y="5.969" size="1.27" layer="95" rot="R90">g</text>
<pin name="G" x="-7.62" y="15.24" visible="pad" length="middle" direction="pas" rot="R270"/>
<pin name="F" x="-5.08" y="15.24" visible="pad" length="middle" direction="pas" rot="R270"/>
<pin name="D" x="0" y="15.24" visible="pad" length="middle" direction="pas" rot="R270"/>
<pin name="B" x="5.08" y="15.24" visible="pad" length="middle" direction="pas" rot="R270"/>
<pin name="A" x="7.62" y="15.24" visible="pad" length="middle" direction="pas" rot="R270"/>
<pin name="CC@1" x="7.62" y="-15.24" visible="pad" length="middle" direction="pas" rot="R90"/>
<pin name="C" x="2.54" y="15.24" visible="pad" length="middle" direction="pas" rot="R270"/>
<pin name="E" x="-2.54" y="15.24" visible="pad" length="middle" direction="pas" rot="R270"/>
<pin name="DP" x="-7.62" y="-15.24" visible="pad" length="middle" direction="pas" rot="R90"/>
<pin name="CC" x="5.08" y="-15.24" visible="pad" length="middle" direction="pas" rot="R90"/>
</symbol>
<symbol name="HD7-A" urn="urn:adsk.eagle:symbol:12954/1" library_version="1">
<wire x1="2.794" y1="-3.683" x2="3.048" y2="-3.683" width="0.3048" layer="94"/>
<wire x1="2.3368" y1="3.1242" x2="2.032" y2="2.8194" width="0.254" layer="94"/>
<wire x1="2.032" y1="2.8194" x2="1.6256" y2="0.6096" width="0.254" layer="94"/>
<wire x1="1.6256" y1="0.6096" x2="1.905" y2="0.3302" width="0.254" layer="94"/>
<wire x1="1.905" y1="0.3302" x2="2.159" y2="0.5842" width="0.254" layer="94"/>
<wire x1="2.159" y1="0.5842" x2="2.54" y2="2.921" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.921" x2="2.3368" y2="3.1242" width="0.254" layer="94"/>
<wire x1="2.032" y1="3.429" x2="1.778" y2="3.175" width="0.254" layer="94"/>
<wire x1="1.778" y1="3.175" x2="-0.762" y2="3.175" width="0.254" layer="94"/>
<wire x1="-0.762" y1="3.175" x2="-1.016" y2="3.429" width="0.254" layer="94"/>
<wire x1="-1.016" y1="3.429" x2="-0.762" y2="3.683" width="0.254" layer="94"/>
<wire x1="-0.762" y1="3.683" x2="1.778" y2="3.683" width="0.254" layer="94"/>
<wire x1="1.778" y1="3.683" x2="2.032" y2="3.429" width="0.254" layer="94"/>
<wire x1="-1.3208" y1="3.1242" x2="-1.016" y2="2.8194" width="0.254" layer="94"/>
<wire x1="-1.016" y1="2.8194" x2="-1.397" y2="0.6096" width="0.254" layer="94"/>
<wire x1="-1.397" y1="0.6096" x2="-1.651" y2="0.3556" width="0.254" layer="94"/>
<wire x1="-1.651" y1="0.3556" x2="-1.905" y2="0.6096" width="0.254" layer="94"/>
<wire x1="-1.905" y1="0.6096" x2="-1.524" y2="2.921" width="0.254" layer="94"/>
<wire x1="-1.524" y1="2.921" x2="-1.3208" y2="3.1242" width="0.254" layer="94"/>
<wire x1="-1.4732" y1="-0.0762" x2="-1.143" y2="0.254" width="0.254" layer="94"/>
<wire x1="-1.143" y1="0.254" x2="1.3462" y2="0.254" width="0.254" layer="94"/>
<wire x1="1.3462" y1="0.254" x2="1.5494" y2="0.0508" width="0.254" layer="94"/>
<wire x1="1.5494" y1="0.0508" x2="1.2446" y2="-0.254" width="0.254" layer="94"/>
<wire x1="1.2446" y1="-0.254" x2="-1.2954" y2="-0.254" width="0.254" layer="94"/>
<wire x1="-1.2954" y1="-0.254" x2="-1.4732" y2="-0.0762" width="0.254" layer="94"/>
<wire x1="-1.8288" y1="-0.3302" x2="-1.5748" y2="-0.5842" width="0.254" layer="94"/>
<wire x1="-2.286" y1="-3.1242" x2="-1.9558" y2="-2.794" width="0.254" layer="94"/>
<wire x1="-1.9558" y1="-2.794" x2="-1.5748" y2="-0.5842" width="0.254" layer="94"/>
<wire x1="-1.8288" y1="-0.3302" x2="-2.1082" y2="-0.6096" width="0.254" layer="94"/>
<wire x1="-2.1082" y1="-0.6096" x2="-2.4892" y2="-2.921" width="0.254" layer="94"/>
<wire x1="-2.4892" y1="-2.921" x2="-2.286" y2="-3.1242" width="0.254" layer="94"/>
<wire x1="-1.9812" y1="-3.429" x2="-1.7272" y2="-3.175" width="0.254" layer="94"/>
<wire x1="-1.7272" y1="-3.175" x2="0.8128" y2="-3.175" width="0.254" layer="94"/>
<wire x1="0.8128" y1="-3.175" x2="1.0668" y2="-3.429" width="0.254" layer="94"/>
<wire x1="1.0668" y1="-3.429" x2="0.8128" y2="-3.683" width="0.254" layer="94"/>
<wire x1="0.8128" y1="-3.683" x2="-1.7272" y2="-3.683" width="0.254" layer="94"/>
<wire x1="-1.7272" y1="-3.683" x2="-1.9812" y2="-3.429" width="0.254" layer="94"/>
<wire x1="1.7018" y1="-0.4064" x2="1.4478" y2="-0.6604" width="0.254" layer="94"/>
<wire x1="1.4478" y1="-0.6604" x2="1.0668" y2="-2.8194" width="0.254" layer="94"/>
<wire x1="1.0668" y1="-2.8194" x2="1.3716" y2="-3.1242" width="0.254" layer="94"/>
<wire x1="1.3716" y1="-3.1242" x2="1.5748" y2="-2.921" width="0.254" layer="94"/>
<wire x1="1.5748" y1="-2.921" x2="1.9558" y2="-0.6604" width="0.254" layer="94"/>
<wire x1="1.9558" y1="-0.6604" x2="1.7018" y2="-0.4064" width="0.254" layer="94"/>
<wire x1="2.286" y1="2.794" x2="1.905" y2="0.635" width="0.4064" layer="94"/>
<wire x1="1.778" y1="3.429" x2="-0.762" y2="3.429" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="2.794" x2="-1.651" y2="0.635" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.4064" layer="94"/>
<wire x1="1.651" y1="-0.762" x2="1.27" y2="-2.794" width="0.4064" layer="94"/>
<wire x1="0.762" y1="-3.429" x2="-1.651" y2="-3.429" width="0.4064" layer="94"/>
<wire x1="-2.286" y1="-2.921" x2="-1.905" y2="-0.635" width="0.4064" layer="94"/>
<wire x1="-8.89" y1="5.08" x2="8.89" y2="5.08" width="0.4064" layer="94"/>
<wire x1="8.89" y1="-5.08" x2="8.89" y2="5.08" width="0.4064" layer="94"/>
<wire x1="8.89" y1="-5.08" x2="-8.89" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-8.89" y1="5.08" x2="-8.89" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-4.953" x2="7.62" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-4.953" x2="5.08" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="0" y1="-4.953" x2="0" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-4.953" x2="-5.08" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-4.953" x2="-7.62" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="4.953" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-4.953" x2="-2.54" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-4.953" x2="2.54" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="10.16" x2="-7.62" y2="4.953" width="0.1524" layer="94"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="4.953" width="0.1524" layer="94"/>
<circle x="2.921" y="-3.683" radius="0.254" width="0.3048" layer="94"/>
<text x="-9.525" y="-5.08" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="11.43" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<text x="7.366" y="6.096" size="1.27" layer="95" rot="R90">CA</text>
<text x="4.826" y="6.096" size="1.27" layer="95" rot="R90">CA</text>
<text x="-7.874" y="-7.239" size="1.27" layer="95" rot="R90">a</text>
<text x="-5.334" y="-7.239" size="1.27" layer="95" rot="R90">b</text>
<text x="-2.794" y="-7.239" size="1.27" layer="95" rot="R90">c</text>
<text x="-0.254" y="-7.239" size="1.27" layer="95" rot="R90">d</text>
<text x="2.286" y="-7.239" size="1.27" layer="95" rot="R90">e</text>
<text x="4.826" y="-7.239" size="1.27" layer="95" rot="R90">f</text>
<text x="7.366" y="-7.239" size="1.27" layer="95" rot="R90">g</text>
<text x="-7.874" y="6.096" size="1.27" layer="95" rot="R90">dp</text>
<pin name="DP" x="-7.62" y="15.24" visible="pad" length="middle" direction="pas" rot="R270"/>
<pin name="F" x="5.08" y="-15.24" visible="pad" length="middle" direction="pas" rot="R90"/>
<pin name="D" x="0" y="-15.24" visible="pad" length="middle" direction="pas" rot="R90"/>
<pin name="B" x="-5.08" y="-15.24" visible="pad" length="middle" direction="pas" rot="R90"/>
<pin name="A" x="-7.62" y="-15.24" visible="pad" length="middle" direction="pas" rot="R90"/>
<pin name="CA" x="7.62" y="15.24" visible="pad" length="middle" direction="pas" rot="R270"/>
<pin name="C" x="-2.54" y="-15.24" visible="pad" length="middle" direction="pas" rot="R90"/>
<pin name="E" x="2.54" y="-15.24" visible="pad" length="middle" direction="pas" rot="R90"/>
<pin name="G" x="7.62" y="-15.24" visible="pad" length="middle" direction="pas" rot="R90"/>
<pin name="CA@1" x="5.08" y="15.24" visible="pad" length="middle" direction="pas" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="HD-A103" urn="urn:adsk.eagle:component:13027/1" prefix="DIS" library_version="1">
<description>&lt;b&gt;LED DISPLAY&lt;/b&gt;&lt;p&gt;
 1-character 7 segment, decimal point right</description>
<gates>
<gate name="A" symbol="HD7-K" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HDSP-A">
<connects>
<connect gate="A" pin="A" pad="10"/>
<connect gate="A" pin="B" pad="9"/>
<connect gate="A" pin="C" pad="8"/>
<connect gate="A" pin="CC" pad="6"/>
<connect gate="A" pin="CC@1" pad="1"/>
<connect gate="A" pin="D" pad="5"/>
<connect gate="A" pin="DP" pad="7"/>
<connect gate="A" pin="E" pad="4"/>
<connect gate="A" pin="F" pad="2"/>
<connect gate="A" pin="G" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:12999/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="HD-F101" urn="urn:adsk.eagle:component:13032/1" prefix="DIS" library_version="1">
<description>&lt;b&gt;LED DISPLAY&lt;/b&gt;&lt;p&gt;
 1-character 7 segment, decimal point right</description>
<gates>
<gate name="A" symbol="HD7-A" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HDSP-E">
<connects>
<connect gate="A" pin="A" pad="10"/>
<connect gate="A" pin="B" pad="9"/>
<connect gate="A" pin="C" pad="8"/>
<connect gate="A" pin="CA" pad="1"/>
<connect gate="A" pin="CA@1" pad="6"/>
<connect gate="A" pin="D" pad="5"/>
<connect gate="A" pin="DP" pad="7"/>
<connect gate="A" pin="E" pad="4"/>
<connect gate="A" pin="F" pad="2"/>
<connect gate="A" pin="G" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:13002/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="eagle-ltspice" urn="urn:adsk.eagle:library:217">
<description>Default symbols for import LTspice schematics&lt;p&gt;
2012-10-29 alf@cadsoft.de&lt;br&gt;</description>
<packages>
<package name="LED_1206" urn="urn:adsk.eagle:footprint:13254/1" library_version="1">
<description>&lt;b&gt;CHICAGO MINIATURE LAMP, INC.&lt;/b&gt;&lt;p&gt;
7022X Series SMT LEDs 1206 Package Size</description>
<wire x1="1.55" y1="-0.75" x2="-1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="-0.75" x2="-1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="0.75" x2="1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.55" y1="0.75" x2="1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-0.55" y1="-0.5" x2="0.55" y2="-0.5" width="0.1016" layer="21" curve="95.452622"/>
<wire x1="-0.55" y1="-0.5" x2="-0.55" y2="0.5" width="0.1016" layer="51" curve="-84.547378"/>
<wire x1="-0.55" y1="0.5" x2="0.55" y2="0.5" width="0.1016" layer="21" curve="-95.452622"/>
<wire x1="0.55" y1="0.5" x2="0.55" y2="-0.5" width="0.1016" layer="51" curve="-84.547378"/>
<rectangle x1="-0.1" y1="-0.1" x2="0.1" y2="0.1" layer="21"/>
<rectangle x1="0.45" y1="-0.7" x2="0.8" y2="-0.45" layer="51"/>
<rectangle x1="0.8" y1="-0.7" x2="0.9" y2="0.5" layer="51"/>
<rectangle x1="0.8" y1="0.55" x2="0.9" y2="0.7" layer="51"/>
<rectangle x1="-0.9" y1="-0.7" x2="-0.8" y2="0.5" layer="51"/>
<rectangle x1="-0.9" y1="0.55" x2="-0.8" y2="0.7" layer="51"/>
<rectangle x1="0.45" y1="-0.7" x2="0.6" y2="-0.45" layer="21"/>
<smd name="A" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="C" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="LED_LD260" urn="urn:adsk.eagle:footprint:13255/1" library_version="1">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
5 mm, square, Siemens</description>
<wire x1="-1.27" y1="-1.27" x2="0" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.27" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.889" x2="1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.889" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.889" width="0.1524" layer="51"/>
<wire x1="0" y1="1.27" x2="0.9917" y2="0.7934" width="0.1524" layer="21" curve="-51.33923"/>
<wire x1="-0.9917" y1="0.7934" x2="0" y2="1.27" width="0.1524" layer="21" curve="-51.33923"/>
<wire x1="0" y1="-1.27" x2="0.9917" y2="-0.7934" width="0.1524" layer="21" curve="51.33923"/>
<wire x1="-0.9917" y1="-0.7934" x2="0" y2="-1.27" width="0.1524" layer="21" curve="51.33923"/>
<wire x1="0.9558" y1="-0.8363" x2="1.27" y2="0" width="0.1524" layer="51" curve="41.185419"/>
<wire x1="0.9756" y1="0.813" x2="1.2699" y2="0" width="0.1524" layer="51" curve="-39.806332"/>
<wire x1="-1.27" y1="0" x2="-0.9643" y2="-0.8265" width="0.1524" layer="51" curve="40.600331"/>
<wire x1="-1.27" y1="0" x2="-0.9643" y2="0.8265" width="0.1524" layer="51" curve="-40.600331"/>
<wire x1="-0.889" y1="0" x2="0" y2="0.889" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="0" x2="0" y2="0.508" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.508" x2="0.508" y2="0" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="-0.889" x2="0.889" y2="0" width="0.1524" layer="51" curve="90"/>
<rectangle x1="1.27" y1="-0.635" x2="2.032" y2="0.635" layer="51"/>
<rectangle x1="1.905" y1="-0.635" x2="2.032" y2="0.635" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.2954" y="1.4732" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-2.4892" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="LED_SML0603" urn="urn:adsk.eagle:footprint:13256/1" library_version="1">
<description>&lt;b&gt;SML0603-XXX (HIGH INTENSITY) LED&lt;/b&gt;&lt;p&gt;
&lt;table&gt;
&lt;tr&gt;&lt;td&gt;AG3K&lt;/td&gt;&lt;td&gt;AQUA GREEN&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;B1K&lt;/td&gt;&lt;td&gt;SUPER BLUE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;R1K&lt;/td&gt;&lt;td&gt;SUPER RED&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;R3K&lt;/td&gt;&lt;td&gt;ULTRA RED&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;O3K&lt;/td&gt;&lt;td&gt;SUPER ORANGE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;O3KH&lt;/td&gt;&lt;td&gt;SOFT ORANGE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Y3KH&lt;/td&gt;&lt;td&gt;SUPER YELLOW&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Y3K&lt;/td&gt;&lt;td&gt;SUPER YELLOW&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;2CW&lt;/td&gt;&lt;td&gt;WHITE&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;
Source: http://www.ledtronics.com/ds/smd-0603/Dstr0092.pdf</description>
<wire x1="-0.75" y1="0.35" x2="0.75" y2="0.35" width="0.1016" layer="51"/>
<wire x1="0.75" y1="0.35" x2="0.75" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.75" y1="-0.35" x2="-0.75" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="-0.75" y1="-0.35" x2="-0.75" y2="0.35" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="0.3" x2="-0.45" y2="-0.3" width="0.1016" layer="51"/>
<wire x1="0.45" y1="0.3" x2="0.45" y2="-0.3" width="0.1016" layer="51"/>
<wire x1="-0.2" y1="0.35" x2="0.2" y2="0.35" width="0.1016" layer="21"/>
<wire x1="-0.2" y1="-0.35" x2="0.2" y2="-0.35" width="0.1016" layer="21"/>
<rectangle x1="-0.4" y1="0.175" x2="0" y2="0.4" layer="51"/>
<rectangle x1="-0.25" y1="0.175" x2="0" y2="0.4" layer="21"/>
<smd name="A" x="0.75" y="0" dx="0.8" dy="0.8" layer="1"/>
<smd name="C" x="-0.75" y="0" dx="0.8" dy="0.8" layer="1"/>
<text x="-1" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-1" y="-2" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="LED_1206" urn="urn:adsk.eagle:package:13319/1" type="box" library_version="1">
<description>CHICAGO MINIATURE LAMP, INC.
7022X Series SMT LEDs 1206 Package Size</description>
<packageinstances>
<packageinstance name="LED_1206"/>
</packageinstances>
</package3d>
<package3d name="LED_LD260" urn="urn:adsk.eagle:package:13313/1" type="box" library_version="1">
<description>LED
5 mm, square, Siemens</description>
<packageinstances>
<packageinstance name="LED_LD260"/>
</packageinstances>
</package3d>
<package3d name="LED_SML0603" urn="urn:adsk.eagle:package:13315/1" type="box" library_version="1">
<description>SML0603-XXX (HIGH INTENSITY) LED

AG3KAQUA GREEN
B1KSUPER BLUE
R1KSUPER RED
R3KULTRA RED
O3KSUPER ORANGE
O3KHSOFT ORANGE
Y3KHSUPER YELLOW
Y3KSUPER YELLOW
2CWWHITE

Source: http://www.ledtronics.com/ds/smd-0603/Dstr0092.pdf</description>
<packageinstances>
<packageinstance name="LED_SML0603"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="LED_LED" urn="urn:adsk.eagle:symbol:13253/1" library_version="1">
<wire x1="1.27" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="-0.762" x2="-3.429" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="-3.302" y2="-3.302" width="0.1524" layer="94"/>
<pin name="A" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="C" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<text x="3.556" y="-4.572" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="-4.572" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<text x="0" y="-5.08" size="0.4064" layer="99" align="center">SpiceOrder 2</text>
<text x="0" y="2.54" size="0.4064" layer="99" align="center">SpiceOrder 1</text>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="-2.159"/>
<vertex x="-3.048" y="-1.27"/>
<vertex x="-2.54" y="-1.778"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-3.302"/>
<vertex x="-2.921" y="-2.413"/>
<vertex x="-2.413" y="-2.921"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="LED_E" urn="urn:adsk.eagle:component:13323/1" prefix="LED" uservalue="yes" library_version="1">
<description>&lt;b&gt;LED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de&lt;p&gt;
Source: www.luxeon.com&lt;p&gt;
Source: www.kingbright.com</description>
<gates>
<gate name="G$1" symbol="LED_LED" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LED_1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:13319/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="D" constant="no"/>
<attribute name="SPICETYPE" value="diode" constant="no"/>
</technology>
</technologies>
</device>
<device name="LD260" package="LED_LD260">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:13313/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="D" constant="no"/>
<attribute name="SPICETYPE" value="diode" constant="no"/>
</technology>
</technologies>
</device>
<device name="SML0603" package="LED_SML0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:13315/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="D" constant="no"/>
<attribute name="SPICETYPE" value="diode" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="TR1" library="inductor-neosid" library_urn="urn:adsk.eagle:library:241" deviceset="SMR6-2W" device="" package3d_urn="urn:adsk.eagle:package:14703/1"/>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="A3L-LOC" device=""/>
<part name="X7" library="con-tycoelectronics" library_urn="urn:adsk.eagle:library:193" deviceset="6ESRM-P" device="" package3d_urn="urn:adsk.eagle:package:10655/1"/>
<part name="S1" library="switch" library_urn="urn:adsk.eagle:library:380" deviceset="M9040P2" device="" package3d_urn="urn:adsk.eagle:package:27687/1"/>
<part name="ARDUINO_NANO1" library="ArduinoNanoV30" deviceset="ARDUINO_NANO" device=""/>
<part name="SIGNAL_IN" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="BTN_HOME" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="BTN_AWAY" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="BTN_SETS" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="BLUETOOTH" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="BLUETOOTH_POWER" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="POWER" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="433MHZ_POWER" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="INFRA_POWER" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="12V_2" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="12V_1" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="SCORE" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/3" device="" package3d_urn="urn:adsk.eagle:package:9878/1"/>
<part name="SERVE" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/3" device="" package3d_urn="urn:adsk.eagle:package:9878/1"/>
<part name="SETS" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/3" device="" package3d_urn="urn:adsk.eagle:package:9878/1"/>
<part name="VAC" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/3" device="" package3d_urn="urn:adsk.eagle:package:9878/1"/>
<part name="LED" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="PW" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="SEGMENTS" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/8" device="" package3d_urn="urn:adsk.eagle:package:9885/1"/>
<part name="INPUT" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/4" device="" package3d_urn="urn:adsk.eagle:package:9879/1"/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="12V" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="DIS1" library="display-hp" library_urn="urn:adsk.eagle:library:212" deviceset="HD-A103" device="" package3d_urn="urn:adsk.eagle:package:12999/1" value="SCORE H1"/>
<part name="DIS2" library="display-hp" library_urn="urn:adsk.eagle:library:212" deviceset="HD-A103" device="" package3d_urn="urn:adsk.eagle:package:12999/1" value="SCORE H2"/>
<part name="DIS3" library="display-hp" library_urn="urn:adsk.eagle:library:212" deviceset="HD-A103" device="" package3d_urn="urn:adsk.eagle:package:12999/1" value="SCORE A1"/>
<part name="DIS4" library="display-hp" library_urn="urn:adsk.eagle:library:212" deviceset="HD-A103" device="" package3d_urn="urn:adsk.eagle:package:12999/1" value="SCORE A2"/>
<part name="PW1" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="SEGMENTS1" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/8" device="" package3d_urn="urn:adsk.eagle:package:9885/1"/>
<part name="INPUT1" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/4" device="" package3d_urn="urn:adsk.eagle:package:9879/1"/>
<part name="PW2" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="SEGMENTS2" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/8" device="" package3d_urn="urn:adsk.eagle:package:9885/1"/>
<part name="INPUT2" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/4" device="" package3d_urn="urn:adsk.eagle:package:9879/1"/>
<part name="PW3" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="SEGMENTS3" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/8" device="" package3d_urn="urn:adsk.eagle:package:9885/1"/>
<part name="INPUT3" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/4" device="" package3d_urn="urn:adsk.eagle:package:9879/1"/>
<part name="PW4" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="SEGMENTS4" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/8" device="" package3d_urn="urn:adsk.eagle:package:9885/1"/>
<part name="INPUT4" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/4" device="" package3d_urn="urn:adsk.eagle:package:9879/1"/>
<part name="PW5" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="SEGMENTS5" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/8" device="" package3d_urn="urn:adsk.eagle:package:9885/1"/>
<part name="INPUT5" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/4" device="" package3d_urn="urn:adsk.eagle:package:9879/1"/>
<part name="PW6" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="SEGMENTS6" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/8" device="" package3d_urn="urn:adsk.eagle:package:9885/1"/>
<part name="INPUT6" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/4" device="" package3d_urn="urn:adsk.eagle:package:9879/1"/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="12V1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="DIS5" library="display-hp" library_urn="urn:adsk.eagle:library:212" deviceset="HD-F101" device="" package3d_urn="urn:adsk.eagle:package:13002/1" value="SETS HOME"/>
<part name="DIS6" library="display-hp" library_urn="urn:adsk.eagle:library:212" deviceset="HD-F101" device="" package3d_urn="urn:adsk.eagle:package:13002/1" value="SETS AWAY"/>
<part name="GND6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="SERVE1" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="LED_E" device="" package3d_urn="urn:adsk.eagle:package:13319/1"/>
<part name="SERVE2" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="LED_E" device="" package3d_urn="urn:adsk.eagle:package:13319/1"/>
<part name="SERVE3" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="LED_E" device="" package3d_urn="urn:adsk.eagle:package:13319/1"/>
<part name="SERVE4" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="LED_E" device="" package3d_urn="urn:adsk.eagle:package:13319/1"/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="198.12" y1="127" x2="198.12" y2="228.6" width="0.1524" layer="90"/>
<wire x1="198.12" y1="228.6" x2="320.04" y2="228.6" width="0.1524" layer="90"/>
<wire x1="320.04" y1="228.6" x2="320.04" y2="127" width="0.1524" layer="90"/>
<wire x1="320.04" y1="127" x2="198.12" y2="127" width="0.1524" layer="90"/>
<text x="231.14" y="190.5" size="6.4516" layer="97">Motherboard</text>
<wire x1="93.98" y1="144.78" x2="30.48" y2="144.78" width="0.1524" layer="90"/>
<wire x1="30.48" y1="144.78" x2="30.48" y2="180.34" width="0.1524" layer="90"/>
<wire x1="30.48" y1="180.34" x2="93.98" y2="180.34" width="0.1524" layer="90"/>
<wire x1="93.98" y1="180.34" x2="93.98" y2="144.78" width="0.1524" layer="90"/>
<text x="88.9" y="177.8" size="1.016" layer="96" rot="R180">GND</text>
<text x="88.9" y="172.72" size="1.016" layer="96" rot="R180">5V</text>
<text x="88.9" y="167.64" size="1.016" layer="96" rot="R180">Qh</text>
<text x="88.9" y="152.4" size="1.016" layer="96" rot="R180">DATA</text>
<text x="88.9" y="157.48" size="1.016" layer="96" rot="R180">LATCH (RCK)</text>
<text x="88.9" y="162.56" size="1.016" layer="96" rot="R180">CLK (SRCLK)</text>
<text x="34.544" y="177.546" size="1.016" layer="96" rot="R180">A</text>
<text x="39.878" y="177.546" size="1.016" layer="96" rot="R180">B</text>
<text x="44.958" y="177.546" size="1.016" layer="96" rot="R180">C</text>
<text x="50.038" y="177.546" size="1.016" layer="96" rot="R180">D</text>
<text x="54.864" y="177.546" size="1.016" layer="96" rot="R180">E</text>
<text x="59.944" y="177.546" size="1.016" layer="96" rot="R180">F</text>
<text x="65.278" y="177.546" size="1.016" layer="96" rot="R180">G</text>
<text x="225.044" y="225.044" size="1.016" layer="96">12V</text>
<text x="230.378" y="225.044" size="1.016" layer="96">12V</text>
<text x="240.792" y="225.044" size="1.016" layer="96">12V</text>
<text x="234.95" y="225.044" size="1.016" layer="96">GND</text>
<text x="277.622" y="225.044" size="1.016" layer="96">GND</text>
<text x="284.226" y="225.044" size="1.016" layer="96">5V</text>
<text x="315.468" y="216.916" size="1.016" layer="96">5V</text>
<text x="315.722" y="201.676" size="1.016" layer="96">5V</text>
<text x="315.722" y="191.516" size="1.016" layer="96">5V</text>
<text x="315.468" y="211.582" size="1.016" layer="96">GND</text>
<text x="315.468" y="206.502" size="1.016" layer="96">GND</text>
<text x="315.722" y="196.342" size="1.016" layer="96">GND</text>
<text x="200.66" y="202.184" size="1.016" layer="96">GND</text>
<text x="200.406" y="207.01" size="1.016" layer="96">12V</text>
<text x="200.914" y="141.478" size="1.016" layer="96">LATCH (RCK)</text>
<text x="200.914" y="146.304" size="1.016" layer="96">CLK (SCK)</text>
<text x="200.914" y="151.638" size="1.016" layer="96">DATA</text>
<text x="200.914" y="156.718" size="1.016" layer="96">LATCH (RCK)</text>
<text x="200.914" y="161.798" size="1.016" layer="96">CLK (SCK)</text>
<text x="200.914" y="166.878" size="1.016" layer="96">DATA</text>
<text x="200.914" y="171.958" size="1.016" layer="96">LATCH (RCK)</text>
<text x="200.66" y="177.292" size="1.016" layer="96">CLK (SCK)</text>
<text x="200.914" y="182.118" size="1.016" layer="96">DATA</text>
<text x="313.69" y="146.812" size="1.016" layer="96">Infra IN</text>
<text x="311.658" y="141.478" size="1.016" layer="96">433MHz IN</text>
<text x="314.96" y="151.892" size="1.016" layer="96">Pin 4</text>
<text x="314.96" y="156.718" size="1.016" layer="96">Pin 5</text>
<text x="315.214" y="161.798" size="1.016" layer="96">Pin 6</text>
<text x="315.214" y="166.878" size="1.016" layer="96">Pin 7</text>
<text x="315.214" y="171.704" size="1.016" layer="96">Pin 8</text>
<text x="315.214" y="176.53" size="1.016" layer="96">Pin 9</text>
<text x="315.722" y="181.61" size="1.016" layer="96">RXD</text>
<text x="315.722" y="186.944" size="1.016" layer="96">TXD</text>
<text x="200.406" y="192.278" size="1.016" layer="96">RESET</text>
<text x="200.66" y="197.358" size="1.016" layer="96">D1 (TX)</text>
<text x="200.66" y="186.944" size="1.016" layer="96">D3</text>
<wire x1="81.28" y1="101.6" x2="144.78" y2="101.6" width="0.1524" layer="90"/>
<wire x1="144.78" y1="101.6" x2="144.78" y2="66.04" width="0.1524" layer="90"/>
<wire x1="144.78" y1="66.04" x2="81.28" y2="66.04" width="0.1524" layer="90"/>
<wire x1="81.28" y1="66.04" x2="81.28" y2="101.6" width="0.1524" layer="90"/>
<text x="86.36" y="68.58" size="1.016" layer="96">GND</text>
<text x="86.36" y="73.66" size="1.016" layer="96">5V</text>
<text x="86.36" y="78.74" size="1.016" layer="96">Qh</text>
<text x="86.36" y="93.98" size="1.016" layer="96">DATA</text>
<text x="86.36" y="88.9" size="1.016" layer="96">LATCH (RCK)</text>
<text x="86.36" y="83.82" size="1.016" layer="96">CLK (SRCLK)</text>
<text x="140.716" y="68.834" size="1.016" layer="96">A</text>
<text x="135.382" y="68.834" size="1.016" layer="96">B</text>
<text x="130.302" y="68.834" size="1.016" layer="96">C</text>
<text x="125.222" y="68.834" size="1.016" layer="96">D</text>
<text x="120.396" y="68.834" size="1.016" layer="96">E</text>
<text x="115.316" y="68.834" size="1.016" layer="96">F</text>
<text x="109.982" y="68.834" size="1.016" layer="96">G</text>
<wire x1="233.68" y1="101.6" x2="297.18" y2="101.6" width="0.1524" layer="90"/>
<wire x1="297.18" y1="101.6" x2="297.18" y2="66.04" width="0.1524" layer="90"/>
<wire x1="297.18" y1="66.04" x2="233.68" y2="66.04" width="0.1524" layer="90"/>
<wire x1="233.68" y1="66.04" x2="233.68" y2="101.6" width="0.1524" layer="90"/>
<text x="238.76" y="68.58" size="1.016" layer="96">GND</text>
<text x="238.76" y="73.66" size="1.016" layer="96">5V</text>
<text x="238.76" y="78.74" size="1.016" layer="96">Qh</text>
<text x="238.76" y="93.98" size="1.016" layer="96">DATA</text>
<text x="238.76" y="88.9" size="1.016" layer="96">LATCH (RCK)</text>
<text x="238.76" y="83.82" size="1.016" layer="96">CLK (SRCLK)</text>
<text x="293.116" y="68.834" size="1.016" layer="96">A</text>
<text x="287.782" y="68.834" size="1.016" layer="96">B</text>
<text x="282.702" y="68.834" size="1.016" layer="96">C</text>
<text x="277.622" y="68.834" size="1.016" layer="96">D</text>
<text x="272.796" y="68.834" size="1.016" layer="96">E</text>
<text x="267.716" y="68.834" size="1.016" layer="96">F</text>
<text x="262.382" y="68.834" size="1.016" layer="96">G</text>
<wire x1="157.48" y1="101.6" x2="220.98" y2="101.6" width="0.1524" layer="90"/>
<wire x1="220.98" y1="101.6" x2="220.98" y2="66.04" width="0.1524" layer="90"/>
<wire x1="220.98" y1="66.04" x2="157.48" y2="66.04" width="0.1524" layer="90"/>
<wire x1="157.48" y1="66.04" x2="157.48" y2="101.6" width="0.1524" layer="90"/>
<text x="162.56" y="68.58" size="1.016" layer="96">GND</text>
<text x="162.56" y="73.66" size="1.016" layer="96">5V</text>
<text x="162.56" y="78.74" size="1.016" layer="96">Qh</text>
<text x="162.56" y="93.98" size="1.016" layer="96">DATA</text>
<text x="162.56" y="88.9" size="1.016" layer="96">LATCH (RCK)</text>
<text x="162.56" y="83.82" size="1.016" layer="96">CLK (SRCLK)</text>
<text x="216.916" y="68.834" size="1.016" layer="96">A</text>
<text x="211.582" y="68.834" size="1.016" layer="96">B</text>
<text x="206.502" y="68.834" size="1.016" layer="96">C</text>
<text x="201.422" y="68.834" size="1.016" layer="96">D</text>
<text x="196.596" y="68.834" size="1.016" layer="96">E</text>
<text x="191.516" y="68.834" size="1.016" layer="96">F</text>
<text x="186.182" y="68.834" size="1.016" layer="96">G</text>
<wire x1="170.18" y1="147.32" x2="106.68" y2="147.32" width="0.1524" layer="90"/>
<wire x1="106.68" y1="147.32" x2="106.68" y2="182.88" width="0.1524" layer="90"/>
<wire x1="106.68" y1="182.88" x2="170.18" y2="182.88" width="0.1524" layer="90"/>
<wire x1="170.18" y1="182.88" x2="170.18" y2="147.32" width="0.1524" layer="90"/>
<text x="165.1" y="180.34" size="1.016" layer="96" rot="R180">GND</text>
<text x="165.1" y="175.26" size="1.016" layer="96" rot="R180">5V</text>
<text x="165.1" y="170.18" size="1.016" layer="96" rot="R180">Qh</text>
<text x="165.1" y="154.94" size="1.016" layer="96" rot="R180">DATA</text>
<text x="165.1" y="160.02" size="1.016" layer="96" rot="R180">LATCH (RCK)</text>
<text x="165.1" y="165.1" size="1.016" layer="96" rot="R180">CLK (SRCLK)</text>
<text x="110.744" y="180.086" size="1.016" layer="96" rot="R180">A</text>
<text x="116.078" y="180.086" size="1.016" layer="96" rot="R180">B</text>
<text x="121.158" y="180.086" size="1.016" layer="96" rot="R180">C</text>
<text x="126.238" y="180.086" size="1.016" layer="96" rot="R180">D</text>
<text x="131.064" y="180.086" size="1.016" layer="96" rot="R180">E</text>
<text x="136.144" y="180.086" size="1.016" layer="96" rot="R180">F</text>
<text x="141.478" y="180.086" size="1.016" layer="96" rot="R180">G</text>
<wire x1="66.04" y1="124.46" x2="66.04" y2="60.96" width="0.1524" layer="90"/>
<wire x1="66.04" y1="60.96" x2="30.48" y2="60.96" width="0.1524" layer="90"/>
<wire x1="30.48" y1="60.96" x2="30.48" y2="124.46" width="0.1524" layer="90"/>
<wire x1="30.48" y1="124.46" x2="66.04" y2="124.46" width="0.1524" layer="90"/>
<text x="33.02" y="119.38" size="1.016" layer="96" rot="R270">GND</text>
<text x="38.1" y="119.38" size="1.016" layer="96" rot="R270">5V</text>
<text x="43.18" y="119.38" size="1.016" layer="96" rot="R270">Qh</text>
<text x="58.42" y="119.38" size="1.016" layer="96" rot="R270">DATA</text>
<text x="53.34" y="119.38" size="1.016" layer="96" rot="R270">LATCH (RCK)</text>
<text x="48.26" y="119.38" size="1.016" layer="96" rot="R270">CLK (SRCLK)</text>
<text x="33.274" y="65.024" size="1.016" layer="96" rot="R270">A</text>
<text x="33.274" y="70.358" size="1.016" layer="96" rot="R270">B</text>
<text x="33.274" y="75.438" size="1.016" layer="96" rot="R270">C</text>
<text x="33.274" y="80.518" size="1.016" layer="96" rot="R270">D</text>
<text x="33.274" y="85.344" size="1.016" layer="96" rot="R270">E</text>
<text x="33.274" y="90.424" size="1.016" layer="96" rot="R270">F</text>
<text x="33.274" y="95.758" size="1.016" layer="96" rot="R270">G</text>
<wire x1="309.88" y1="101.6" x2="373.38" y2="101.6" width="0.1524" layer="90"/>
<wire x1="373.38" y1="101.6" x2="373.38" y2="66.04" width="0.1524" layer="90"/>
<wire x1="373.38" y1="66.04" x2="309.88" y2="66.04" width="0.1524" layer="90"/>
<wire x1="309.88" y1="66.04" x2="309.88" y2="101.6" width="0.1524" layer="90"/>
<text x="314.96" y="68.58" size="1.016" layer="96">GND</text>
<text x="314.96" y="73.66" size="1.016" layer="96">5V</text>
<text x="314.96" y="78.74" size="1.016" layer="96">Qh</text>
<text x="314.96" y="93.98" size="1.016" layer="96">DATA</text>
<text x="314.96" y="88.9" size="1.016" layer="96">LATCH (RCK)</text>
<text x="314.96" y="83.82" size="1.016" layer="96">CLK (SRCLK)</text>
<text x="369.316" y="68.834" size="1.016" layer="96">A</text>
<text x="363.982" y="68.834" size="1.016" layer="96">B</text>
<text x="358.902" y="68.834" size="1.016" layer="96">C</text>
<text x="353.822" y="68.834" size="1.016" layer="96">D</text>
<text x="348.996" y="68.834" size="1.016" layer="96">E</text>
<text x="343.916" y="68.834" size="1.016" layer="96">F</text>
<text x="338.582" y="68.834" size="1.016" layer="96">G</text>
</plain>
<instances>
<instance part="TR1" gate="G$1" x="55.88" y="233.68"/>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="X7" gate="G$1" x="22.86" y="233.68" rot="R180"/>
<instance part="S1" gate="2" x="38.1" y="228.6" rot="R270"/>
<instance part="S1" gate="1" x="38.1" y="241.3" rot="R270"/>
<instance part="ARDUINO_NANO1" gate="G$1" x="256.54" y="152.4"/>
<instance part="SIGNAL_IN" gate="-1" x="312.42" y="144.78"/>
<instance part="SIGNAL_IN" gate="-2" x="312.42" y="139.7"/>
<instance part="BTN_HOME" gate="-1" x="312.42" y="154.94"/>
<instance part="BTN_HOME" gate="-2" x="312.42" y="149.86"/>
<instance part="BTN_AWAY" gate="-1" x="312.42" y="165.1"/>
<instance part="BTN_AWAY" gate="-2" x="312.42" y="160.02"/>
<instance part="BTN_SETS" gate="-1" x="312.42" y="175.26"/>
<instance part="BTN_SETS" gate="-2" x="312.42" y="170.18"/>
<instance part="BLUETOOTH" gate="-1" x="312.42" y="185.42"/>
<instance part="BLUETOOTH" gate="-2" x="312.42" y="180.34"/>
<instance part="BLUETOOTH_POWER" gate="-1" x="312.42" y="195.58"/>
<instance part="BLUETOOTH_POWER" gate="-2" x="312.42" y="190.5"/>
<instance part="POWER" gate="-1" x="312.42" y="205.74"/>
<instance part="POWER" gate="-2" x="312.42" y="200.66"/>
<instance part="433MHZ_POWER" gate="-1" x="312.42" y="215.9"/>
<instance part="433MHZ_POWER" gate="-2" x="312.42" y="210.82"/>
<instance part="INFRA_POWER" gate="-1" x="281.94" y="220.98" rot="R90"/>
<instance part="INFRA_POWER" gate="-2" x="287.02" y="220.98" rot="R90"/>
<instance part="12V_2" gate="-1" x="238.76" y="220.98" rot="R90"/>
<instance part="12V_2" gate="-2" x="243.84" y="220.98" rot="R90"/>
<instance part="12V_1" gate="-1" x="228.6" y="220.98" rot="R90"/>
<instance part="12V_1" gate="-2" x="233.68" y="220.98" rot="R90"/>
<instance part="SCORE" gate="-1" x="205.74" y="139.7" rot="R180"/>
<instance part="SCORE" gate="-2" x="205.74" y="144.78" rot="R180"/>
<instance part="SCORE" gate="-3" x="205.74" y="149.86" rot="R180"/>
<instance part="SERVE" gate="-1" x="205.74" y="154.94" rot="R180"/>
<instance part="SERVE" gate="-2" x="205.74" y="160.02" rot="R180"/>
<instance part="SERVE" gate="-3" x="205.74" y="165.1" rot="R180"/>
<instance part="SETS" gate="-1" x="205.74" y="170.18" rot="R180"/>
<instance part="SETS" gate="-2" x="205.74" y="175.26" rot="R180"/>
<instance part="SETS" gate="-3" x="205.74" y="180.34" rot="R180"/>
<instance part="VAC" gate="-1" x="205.74" y="185.42" rot="R180"/>
<instance part="VAC" gate="-2" x="205.74" y="190.5" rot="R180"/>
<instance part="VAC" gate="-3" x="205.74" y="195.58" rot="R180"/>
<instance part="LED" gate="-1" x="205.74" y="200.66" rot="R180"/>
<instance part="LED" gate="-2" x="205.74" y="205.74" rot="R180"/>
<instance part="PW" gate="-1" x="86.36" y="175.26"/>
<instance part="PW" gate="-2" x="86.36" y="170.18"/>
<instance part="SEGMENTS" gate="-1" x="33.02" y="172.72" rot="R90"/>
<instance part="SEGMENTS" gate="-2" x="38.1" y="172.72" rot="R90"/>
<instance part="SEGMENTS" gate="-3" x="43.18" y="172.72" rot="R90"/>
<instance part="SEGMENTS" gate="-4" x="48.26" y="172.72" rot="R90"/>
<instance part="SEGMENTS" gate="-5" x="53.34" y="172.72" rot="R90"/>
<instance part="SEGMENTS" gate="-6" x="58.42" y="172.72" rot="R90"/>
<instance part="SEGMENTS" gate="-7" x="63.5" y="172.72" rot="R90"/>
<instance part="SEGMENTS" gate="-8" x="68.58" y="172.72" rot="R90"/>
<instance part="INPUT" gate="-1" x="86.36" y="165.1"/>
<instance part="INPUT" gate="-2" x="86.36" y="160.02"/>
<instance part="INPUT" gate="-3" x="86.36" y="154.94"/>
<instance part="INPUT" gate="-4" x="86.36" y="149.86"/>
<instance part="GND1" gate="1" x="66.04" y="226.06"/>
<instance part="12V" gate="VCC" x="66.04" y="246.38"/>
<instance part="DIS1" gate="A" x="134.62" y="25.4"/>
<instance part="DIS2" gate="A" x="177.8" y="25.4"/>
<instance part="DIS3" gate="A" x="226.06" y="25.4"/>
<instance part="DIS4" gate="A" x="259.08" y="25.4"/>
<instance part="PW1" gate="-1" x="88.9" y="71.12" rot="R180"/>
<instance part="PW1" gate="-2" x="88.9" y="76.2" rot="R180"/>
<instance part="SEGMENTS1" gate="-1" x="142.24" y="73.66" rot="R270"/>
<instance part="SEGMENTS1" gate="-2" x="137.16" y="73.66" rot="R270"/>
<instance part="SEGMENTS1" gate="-3" x="132.08" y="73.66" rot="R270"/>
<instance part="SEGMENTS1" gate="-4" x="127" y="73.66" rot="R270"/>
<instance part="SEGMENTS1" gate="-5" x="121.92" y="73.66" rot="R270"/>
<instance part="SEGMENTS1" gate="-6" x="116.84" y="73.66" rot="R270"/>
<instance part="SEGMENTS1" gate="-7" x="111.76" y="73.66" rot="R270"/>
<instance part="SEGMENTS1" gate="-8" x="106.68" y="73.66" rot="R270"/>
<instance part="INPUT1" gate="-1" x="88.9" y="81.28" rot="R180"/>
<instance part="INPUT1" gate="-2" x="88.9" y="86.36" rot="R180"/>
<instance part="INPUT1" gate="-3" x="88.9" y="91.44" rot="R180"/>
<instance part="INPUT1" gate="-4" x="88.9" y="96.52" rot="R180"/>
<instance part="PW2" gate="-1" x="241.3" y="71.12" rot="R180"/>
<instance part="PW2" gate="-2" x="241.3" y="76.2" rot="R180"/>
<instance part="SEGMENTS2" gate="-1" x="294.64" y="73.66" rot="R270"/>
<instance part="SEGMENTS2" gate="-2" x="289.56" y="73.66" rot="R270"/>
<instance part="SEGMENTS2" gate="-3" x="284.48" y="73.66" rot="R270"/>
<instance part="SEGMENTS2" gate="-4" x="279.4" y="73.66" rot="R270"/>
<instance part="SEGMENTS2" gate="-5" x="274.32" y="73.66" rot="R270"/>
<instance part="SEGMENTS2" gate="-6" x="269.24" y="73.66" rot="R270"/>
<instance part="SEGMENTS2" gate="-7" x="264.16" y="73.66" rot="R270"/>
<instance part="SEGMENTS2" gate="-8" x="259.08" y="73.66" rot="R270"/>
<instance part="INPUT2" gate="-1" x="241.3" y="81.28" rot="R180"/>
<instance part="INPUT2" gate="-2" x="241.3" y="86.36" rot="R180"/>
<instance part="INPUT2" gate="-3" x="241.3" y="91.44" rot="R180"/>
<instance part="INPUT2" gate="-4" x="241.3" y="96.52" rot="R180"/>
<instance part="PW3" gate="-1" x="165.1" y="71.12" rot="R180"/>
<instance part="PW3" gate="-2" x="165.1" y="76.2" rot="R180"/>
<instance part="SEGMENTS3" gate="-1" x="218.44" y="73.66" rot="R270"/>
<instance part="SEGMENTS3" gate="-2" x="213.36" y="73.66" rot="R270"/>
<instance part="SEGMENTS3" gate="-3" x="208.28" y="73.66" rot="R270"/>
<instance part="SEGMENTS3" gate="-4" x="203.2" y="73.66" rot="R270"/>
<instance part="SEGMENTS3" gate="-5" x="198.12" y="73.66" rot="R270"/>
<instance part="SEGMENTS3" gate="-6" x="193.04" y="73.66" rot="R270"/>
<instance part="SEGMENTS3" gate="-7" x="187.96" y="73.66" rot="R270"/>
<instance part="SEGMENTS3" gate="-8" x="182.88" y="73.66" rot="R270"/>
<instance part="INPUT3" gate="-1" x="165.1" y="81.28" rot="R180"/>
<instance part="INPUT3" gate="-2" x="165.1" y="86.36" rot="R180"/>
<instance part="INPUT3" gate="-3" x="165.1" y="91.44" rot="R180"/>
<instance part="INPUT3" gate="-4" x="165.1" y="96.52" rot="R180"/>
<instance part="PW4" gate="-1" x="162.56" y="177.8"/>
<instance part="PW4" gate="-2" x="162.56" y="172.72"/>
<instance part="SEGMENTS4" gate="-1" x="109.22" y="175.26" rot="R90"/>
<instance part="SEGMENTS4" gate="-2" x="114.3" y="175.26" rot="R90"/>
<instance part="SEGMENTS4" gate="-3" x="119.38" y="175.26" rot="R90"/>
<instance part="SEGMENTS4" gate="-4" x="124.46" y="175.26" rot="R90"/>
<instance part="SEGMENTS4" gate="-5" x="129.54" y="175.26" rot="R90"/>
<instance part="SEGMENTS4" gate="-6" x="134.62" y="175.26" rot="R90"/>
<instance part="SEGMENTS4" gate="-7" x="139.7" y="175.26" rot="R90"/>
<instance part="SEGMENTS4" gate="-8" x="144.78" y="175.26" rot="R90"/>
<instance part="INPUT4" gate="-1" x="162.56" y="167.64"/>
<instance part="INPUT4" gate="-2" x="162.56" y="162.56"/>
<instance part="INPUT4" gate="-3" x="162.56" y="157.48"/>
<instance part="INPUT4" gate="-4" x="162.56" y="152.4"/>
<instance part="PW5" gate="-1" x="35.56" y="116.84" rot="R90"/>
<instance part="PW5" gate="-2" x="40.64" y="116.84" rot="R90"/>
<instance part="SEGMENTS5" gate="-1" x="38.1" y="63.5" rot="R180"/>
<instance part="SEGMENTS5" gate="-2" x="38.1" y="68.58" rot="R180"/>
<instance part="SEGMENTS5" gate="-3" x="38.1" y="73.66" rot="R180"/>
<instance part="SEGMENTS5" gate="-4" x="38.1" y="78.74" rot="R180"/>
<instance part="SEGMENTS5" gate="-5" x="38.1" y="83.82" rot="R180"/>
<instance part="SEGMENTS5" gate="-6" x="38.1" y="88.9" rot="R180"/>
<instance part="SEGMENTS5" gate="-7" x="38.1" y="93.98" rot="R180"/>
<instance part="SEGMENTS5" gate="-8" x="38.1" y="99.06" rot="R180"/>
<instance part="INPUT5" gate="-1" x="45.72" y="116.84" rot="R90"/>
<instance part="INPUT5" gate="-2" x="50.8" y="116.84" rot="R90"/>
<instance part="INPUT5" gate="-3" x="55.88" y="116.84" rot="R90"/>
<instance part="INPUT5" gate="-4" x="60.96" y="116.84" rot="R90"/>
<instance part="PW6" gate="-1" x="317.5" y="71.12" rot="R180"/>
<instance part="PW6" gate="-2" x="317.5" y="76.2" rot="R180"/>
<instance part="SEGMENTS6" gate="-1" x="370.84" y="73.66" rot="R270"/>
<instance part="SEGMENTS6" gate="-2" x="365.76" y="73.66" rot="R270"/>
<instance part="SEGMENTS6" gate="-3" x="360.68" y="73.66" rot="R270"/>
<instance part="SEGMENTS6" gate="-4" x="355.6" y="73.66" rot="R270"/>
<instance part="SEGMENTS6" gate="-5" x="350.52" y="73.66" rot="R270"/>
<instance part="SEGMENTS6" gate="-6" x="345.44" y="73.66" rot="R270"/>
<instance part="SEGMENTS6" gate="-7" x="340.36" y="73.66" rot="R270"/>
<instance part="SEGMENTS6" gate="-8" x="335.28" y="73.66" rot="R270"/>
<instance part="INPUT6" gate="-1" x="317.5" y="81.28" rot="R180"/>
<instance part="INPUT6" gate="-2" x="317.5" y="86.36" rot="R180"/>
<instance part="INPUT6" gate="-3" x="317.5" y="91.44" rot="R180"/>
<instance part="INPUT6" gate="-4" x="317.5" y="96.52" rot="R180"/>
<instance part="GND2" gate="1" x="312.42" y="63.5"/>
<instance part="GND3" gate="1" x="236.22" y="63.5"/>
<instance part="GND4" gate="1" x="160.02" y="63.5"/>
<instance part="GND5" gate="1" x="83.82" y="63.5"/>
<instance part="12V1" gate="VCC" x="121.92" y="15.24"/>
<instance part="DIS5" gate="A" x="86.36" y="210.82"/>
<instance part="DIS6" gate="A" x="127" y="210.82"/>
<instance part="GND6" gate="1" x="22.86" y="119.38"/>
<instance part="SERVE1" gate="G$1" x="12.7" y="27.94" rot="R180"/>
<instance part="SERVE2" gate="G$1" x="25.4" y="27.94" rot="R180"/>
<instance part="SERVE3" gate="G$1" x="38.1" y="27.94" rot="R180"/>
<instance part="SERVE4" gate="G$1" x="50.8" y="27.94" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="L" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="AC1"/>
<pinref part="S1" gate="2" pin="P"/>
<wire x1="25.4" y1="228.6" x2="33.02" y2="228.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="AC2"/>
<pinref part="S1" gate="1" pin="P"/>
<wire x1="25.4" y1="238.76" x2="33.02" y2="238.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="S1" gate="2" pin="S"/>
<wire x1="43.18" y1="226.06" x2="53.34" y2="226.06" width="0.1524" layer="91"/>
<pinref part="TR1" gate="G$1" pin="4"/>
<wire x1="53.34" y1="226.06" x2="53.34" y2="231.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="TR1" gate="G$1" pin="1"/>
<pinref part="S1" gate="1" pin="S"/>
<wire x1="53.34" y1="236.22" x2="43.18" y2="236.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="TR1" gate="G$1" pin="5"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="60.96" y1="231.14" x2="66.04" y2="231.14" width="0.1524" layer="91"/>
<wire x1="66.04" y1="231.14" x2="66.04" y2="228.6" width="0.1524" layer="91"/>
<pinref part="12V_2" gate="-1" pin="KL"/>
<wire x1="238.76" y1="226.06" x2="238.76" y2="231.14" width="0.1524" layer="91"/>
<wire x1="238.76" y1="231.14" x2="172.72" y2="231.14" width="0.1524" layer="91"/>
<wire x1="172.72" y1="231.14" x2="71.12" y2="231.14" width="0.1524" layer="91"/>
<wire x1="71.12" y1="231.14" x2="68.58" y2="231.14" width="0.1524" layer="91"/>
<wire x1="68.58" y1="231.14" x2="66.04" y2="231.14" width="0.1524" layer="91"/>
<junction x="66.04" y="231.14"/>
<pinref part="PW" gate="-1" pin="KL"/>
<wire x1="91.44" y1="175.26" x2="96.52" y2="175.26" width="0.1524" layer="91"/>
<wire x1="96.52" y1="175.26" x2="96.52" y2="185.42" width="0.1524" layer="91"/>
<wire x1="96.52" y1="185.42" x2="172.72" y2="185.42" width="0.1524" layer="91"/>
<wire x1="172.72" y1="185.42" x2="172.72" y2="177.8" width="0.1524" layer="91"/>
<pinref part="PW4" gate="-1" pin="KL"/>
<wire x1="172.72" y1="177.8" x2="167.64" y2="177.8" width="0.1524" layer="91"/>
<wire x1="172.72" y1="185.42" x2="172.72" y2="231.14" width="0.1524" layer="91"/>
<junction x="172.72" y="185.42"/>
<junction x="172.72" y="231.14"/>
</segment>
<segment>
<pinref part="PW6" gate="-1" pin="KL"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="312.42" y1="71.12" x2="312.42" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="PW2" gate="-1" pin="KL"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="236.22" y1="71.12" x2="236.22" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="PW3" gate="-1" pin="KL"/>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="160.02" y1="71.12" x2="160.02" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="PW1" gate="-1" pin="KL"/>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="83.82" y1="71.12" x2="83.82" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND6" gate="1" pin="GND"/>
<wire x1="22.86" y1="121.92" x2="22.86" y2="127" width="0.1524" layer="91"/>
<pinref part="PW5" gate="-1" pin="KL"/>
<wire x1="22.86" y1="127" x2="35.56" y2="127" width="0.1524" layer="91"/>
<wire x1="35.56" y1="127" x2="35.56" y2="121.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="12V" class="0">
<segment>
<pinref part="TR1" gate="G$1" pin="8"/>
<pinref part="12V" gate="VCC" pin="VCC"/>
<wire x1="60.96" y1="236.22" x2="66.04" y2="236.22" width="0.1524" layer="91"/>
<wire x1="66.04" y1="236.22" x2="66.04" y2="243.84" width="0.1524" layer="91"/>
<pinref part="12V_2" gate="-2" pin="KL"/>
<wire x1="243.84" y1="233.68" x2="243.84" y2="226.06" width="0.1524" layer="91"/>
<wire x1="66.04" y1="236.22" x2="93.98" y2="236.22" width="0.1524" layer="91"/>
<wire x1="93.98" y1="236.22" x2="134.62" y2="236.22" width="0.1524" layer="91"/>
<wire x1="134.62" y1="236.22" x2="243.84" y2="236.22" width="0.1524" layer="91"/>
<wire x1="243.84" y1="236.22" x2="243.84" y2="233.68" width="0.1524" layer="91"/>
<junction x="66.04" y="236.22"/>
<pinref part="DIS5" gate="A" pin="CA"/>
<wire x1="93.98" y1="226.06" x2="93.98" y2="236.22" width="0.1524" layer="91"/>
<junction x="93.98" y="236.22"/>
<pinref part="DIS6" gate="A" pin="CA"/>
<wire x1="134.62" y1="226.06" x2="134.62" y2="236.22" width="0.1524" layer="91"/>
<junction x="134.62" y="236.22"/>
</segment>
<segment>
<pinref part="DIS4" gate="A" pin="CC@1"/>
<wire x1="266.7" y1="10.16" x2="266.7" y2="7.62" width="0.1524" layer="91"/>
<wire x1="266.7" y1="7.62" x2="121.92" y2="7.62" width="0.1524" layer="91"/>
<pinref part="12V1" gate="VCC" pin="VCC"/>
<wire x1="121.92" y1="7.62" x2="121.92" y2="12.7" width="0.1524" layer="91"/>
<pinref part="DIS3" gate="A" pin="CC@1"/>
<wire x1="233.68" y1="10.16" x2="233.68" y2="7.62" width="0.1524" layer="91"/>
<wire x1="233.68" y1="7.62" x2="121.92" y2="7.62" width="0.1524" layer="91"/>
<junction x="121.92" y="7.62"/>
<pinref part="DIS2" gate="A" pin="CC@1"/>
<wire x1="185.42" y1="10.16" x2="185.42" y2="7.62" width="0.1524" layer="91"/>
<wire x1="185.42" y1="7.62" x2="233.68" y2="7.62" width="0.1524" layer="91"/>
<junction x="233.68" y="7.62"/>
<pinref part="DIS1" gate="A" pin="CC@1"/>
<wire x1="142.24" y1="10.16" x2="142.24" y2="7.62" width="0.1524" layer="91"/>
<wire x1="142.24" y1="7.62" x2="185.42" y2="7.62" width="0.1524" layer="91"/>
<junction x="185.42" y="7.62"/>
<pinref part="SERVE1" gate="G$1" pin="A"/>
<wire x1="12.7" y1="25.4" x2="12.7" y2="7.62" width="0.1524" layer="91"/>
<wire x1="12.7" y1="7.62" x2="25.4" y2="7.62" width="0.1524" layer="91"/>
<pinref part="SERVE2" gate="G$1" pin="A"/>
<wire x1="25.4" y1="7.62" x2="38.1" y2="7.62" width="0.1524" layer="91"/>
<wire x1="38.1" y1="7.62" x2="50.8" y2="7.62" width="0.1524" layer="91"/>
<wire x1="50.8" y1="7.62" x2="121.92" y2="7.62" width="0.1524" layer="91"/>
<wire x1="25.4" y1="25.4" x2="25.4" y2="7.62" width="0.1524" layer="91"/>
<junction x="25.4" y="7.62"/>
<pinref part="SERVE3" gate="G$1" pin="A"/>
<wire x1="38.1" y1="25.4" x2="38.1" y2="7.62" width="0.1524" layer="91"/>
<junction x="38.1" y="7.62"/>
<pinref part="SERVE4" gate="G$1" pin="A"/>
<wire x1="50.8" y1="25.4" x2="50.8" y2="7.62" width="0.1524" layer="91"/>
<junction x="50.8" y="7.62"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="DIS4" gate="A" pin="A"/>
<wire x1="266.7" y1="40.64" x2="370.84" y2="40.64" width="0.1524" layer="91"/>
<pinref part="SEGMENTS6" gate="-1" pin="KL"/>
<wire x1="370.84" y1="40.64" x2="370.84" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="DIS4" gate="A" pin="B"/>
<wire x1="264.16" y1="40.64" x2="264.16" y2="41.91" width="0.1524" layer="91"/>
<wire x1="264.16" y1="41.91" x2="366.268" y2="41.91" width="0.1524" layer="91"/>
<pinref part="SEGMENTS6" gate="-2" pin="KL"/>
<wire x1="366.268" y1="41.91" x2="366.268" y2="68.58" width="0.1524" layer="91"/>
<wire x1="366.268" y1="68.58" x2="365.76" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="DIS4" gate="A" pin="C"/>
<wire x1="261.62" y1="40.64" x2="261.62" y2="43.18" width="0.1524" layer="91"/>
<wire x1="261.62" y1="43.18" x2="360.68" y2="43.18" width="0.1524" layer="91"/>
<pinref part="SEGMENTS6" gate="-3" pin="KL"/>
<wire x1="360.68" y1="43.18" x2="360.68" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="DIS4" gate="A" pin="D"/>
<wire x1="259.08" y1="40.64" x2="259.08" y2="44.45" width="0.1524" layer="91"/>
<wire x1="259.08" y1="44.45" x2="355.6" y2="44.45" width="0.1524" layer="91"/>
<pinref part="SEGMENTS6" gate="-4" pin="KL"/>
<wire x1="355.6" y1="44.45" x2="355.6" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="DIS4" gate="A" pin="E"/>
<wire x1="256.54" y1="40.64" x2="256.54" y2="45.72" width="0.1524" layer="91"/>
<pinref part="SEGMENTS6" gate="-5" pin="KL"/>
<wire x1="256.54" y1="45.72" x2="350.52" y2="45.72" width="0.1524" layer="91"/>
<wire x1="350.52" y1="45.72" x2="350.52" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="DIS4" gate="A" pin="F"/>
<wire x1="254" y1="40.64" x2="254" y2="46.736" width="0.1524" layer="91"/>
<wire x1="254" y1="46.736" x2="345.44" y2="46.736" width="0.1524" layer="91"/>
<pinref part="SEGMENTS6" gate="-6" pin="KL"/>
<wire x1="345.44" y1="46.736" x2="345.44" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="DIS4" gate="A" pin="G"/>
<wire x1="251.46" y1="40.64" x2="251.46" y2="48.26" width="0.1524" layer="91"/>
<wire x1="251.46" y1="48.26" x2="340.36" y2="48.26" width="0.1524" layer="91"/>
<pinref part="SEGMENTS6" gate="-7" pin="KL"/>
<wire x1="340.36" y1="48.26" x2="340.36" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="INPUT6" gate="-1" pin="KL"/>
<wire x1="312.42" y1="81.28" x2="299.72" y2="81.28" width="0.1524" layer="91"/>
<wire x1="299.72" y1="81.28" x2="299.72" y2="104.14" width="0.1524" layer="91"/>
<wire x1="299.72" y1="104.14" x2="231.14" y2="104.14" width="0.1524" layer="91"/>
<wire x1="231.14" y1="104.14" x2="231.14" y2="96.52" width="0.1524" layer="91"/>
<pinref part="INPUT2" gate="-4" pin="KL"/>
<wire x1="231.14" y1="96.52" x2="236.22" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCORE_LATCH" class="0">
<segment>
<pinref part="SCORE" gate="-1" pin="KL"/>
<wire x1="200.66" y1="139.7" x2="195.58" y2="139.7" width="0.1524" layer="91"/>
<wire x1="195.58" y1="139.7" x2="195.58" y2="124.46" width="0.1524" layer="91"/>
<wire x1="195.58" y1="124.46" x2="228.6" y2="124.46" width="0.1524" layer="91"/>
<wire x1="228.6" y1="124.46" x2="304.8" y2="124.46" width="0.1524" layer="91"/>
<wire x1="304.8" y1="124.46" x2="304.8" y2="91.44" width="0.1524" layer="91"/>
<pinref part="INPUT6" gate="-3" pin="KL"/>
<wire x1="304.8" y1="91.44" x2="312.42" y2="91.44" width="0.1524" layer="91"/>
<pinref part="INPUT2" gate="-3" pin="KL"/>
<wire x1="236.22" y1="91.44" x2="228.6" y2="91.44" width="0.1524" layer="91"/>
<wire x1="228.6" y1="91.44" x2="228.6" y2="124.46" width="0.1524" layer="91"/>
<junction x="228.6" y="124.46"/>
<pinref part="INPUT3" gate="-3" pin="KL"/>
<wire x1="160.02" y1="91.44" x2="152.4" y2="91.44" width="0.1524" layer="91"/>
<wire x1="152.4" y1="91.44" x2="152.4" y2="124.46" width="0.1524" layer="91"/>
<wire x1="152.4" y1="124.46" x2="195.58" y2="124.46" width="0.1524" layer="91"/>
<junction x="195.58" y="124.46"/>
<pinref part="INPUT1" gate="-3" pin="KL"/>
<wire x1="83.82" y1="91.44" x2="76.2" y2="91.44" width="0.1524" layer="91"/>
<wire x1="76.2" y1="91.44" x2="76.2" y2="124.46" width="0.1524" layer="91"/>
<wire x1="76.2" y1="124.46" x2="152.4" y2="124.46" width="0.1524" layer="91"/>
<junction x="152.4" y="124.46"/>
</segment>
</net>
<net name="SCORE_CLK" class="0">
<segment>
<pinref part="INPUT6" gate="-2" pin="KL"/>
<wire x1="312.42" y1="86.36" x2="302.26" y2="86.36" width="0.1524" layer="91"/>
<wire x1="302.26" y1="86.36" x2="302.26" y2="121.92" width="0.1524" layer="91"/>
<wire x1="302.26" y1="121.92" x2="226.06" y2="121.92" width="0.1524" layer="91"/>
<wire x1="226.06" y1="121.92" x2="193.04" y2="121.92" width="0.1524" layer="91"/>
<wire x1="193.04" y1="121.92" x2="193.04" y2="144.78" width="0.1524" layer="91"/>
<pinref part="SCORE" gate="-2" pin="KL"/>
<wire x1="193.04" y1="144.78" x2="200.66" y2="144.78" width="0.1524" layer="91"/>
<pinref part="INPUT2" gate="-2" pin="KL"/>
<wire x1="236.22" y1="86.36" x2="226.06" y2="86.36" width="0.1524" layer="91"/>
<wire x1="226.06" y1="86.36" x2="226.06" y2="121.92" width="0.1524" layer="91"/>
<junction x="226.06" y="121.92"/>
<pinref part="INPUT3" gate="-2" pin="KL"/>
<wire x1="160.02" y1="86.36" x2="149.86" y2="86.36" width="0.1524" layer="91"/>
<wire x1="149.86" y1="86.36" x2="149.86" y2="121.92" width="0.1524" layer="91"/>
<wire x1="149.86" y1="121.92" x2="193.04" y2="121.92" width="0.1524" layer="91"/>
<junction x="193.04" y="121.92"/>
<pinref part="INPUT1" gate="-2" pin="KL"/>
<wire x1="83.82" y1="86.36" x2="73.66" y2="86.36" width="0.1524" layer="91"/>
<wire x1="73.66" y1="86.36" x2="73.66" y2="121.92" width="0.1524" layer="91"/>
<wire x1="73.66" y1="121.92" x2="149.86" y2="121.92" width="0.1524" layer="91"/>
<junction x="149.86" y="121.92"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="INPUT6" gate="-4" pin="KL"/>
<wire x1="312.42" y1="96.52" x2="307.34" y2="96.52" width="0.1524" layer="91"/>
<wire x1="307.34" y1="96.52" x2="307.34" y2="119.38" width="0.1524" layer="91"/>
<wire x1="307.34" y1="119.38" x2="190.5" y2="119.38" width="0.1524" layer="91"/>
<wire x1="190.5" y1="119.38" x2="190.5" y2="149.86" width="0.1524" layer="91"/>
<pinref part="SCORE" gate="-3" pin="KL"/>
<wire x1="190.5" y1="149.86" x2="200.66" y2="149.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="INPUT2" gate="-1" pin="KL"/>
<wire x1="236.22" y1="81.28" x2="223.52" y2="81.28" width="0.1524" layer="91"/>
<wire x1="223.52" y1="81.28" x2="223.52" y2="104.14" width="0.1524" layer="91"/>
<wire x1="223.52" y1="104.14" x2="154.94" y2="104.14" width="0.1524" layer="91"/>
<wire x1="154.94" y1="104.14" x2="154.94" y2="96.52" width="0.1524" layer="91"/>
<pinref part="INPUT3" gate="-4" pin="KL"/>
<wire x1="154.94" y1="96.52" x2="160.02" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="INPUT3" gate="-1" pin="KL"/>
<wire x1="160.02" y1="81.28" x2="147.32" y2="81.28" width="0.1524" layer="91"/>
<wire x1="147.32" y1="81.28" x2="147.32" y2="104.14" width="0.1524" layer="91"/>
<wire x1="147.32" y1="104.14" x2="78.74" y2="104.14" width="0.1524" layer="91"/>
<wire x1="78.74" y1="104.14" x2="78.74" y2="96.52" width="0.1524" layer="91"/>
<pinref part="INPUT1" gate="-4" pin="KL"/>
<wire x1="78.74" y1="96.52" x2="83.82" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="DIS3" gate="A" pin="A"/>
<wire x1="233.68" y1="40.64" x2="233.68" y2="50.8" width="0.1524" layer="91"/>
<wire x1="233.68" y1="50.8" x2="294.64" y2="50.8" width="0.1524" layer="91"/>
<pinref part="SEGMENTS2" gate="-1" pin="KL"/>
<wire x1="294.64" y1="50.8" x2="294.64" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="DIS3" gate="A" pin="B"/>
<wire x1="231.14" y1="40.64" x2="231.14" y2="52.324" width="0.1524" layer="91"/>
<wire x1="231.14" y1="52.324" x2="230.886" y2="52.324" width="0.1524" layer="91"/>
<pinref part="SEGMENTS2" gate="-2" pin="KL"/>
<wire x1="230.886" y1="52.324" x2="289.56" y2="52.324" width="0.1524" layer="91"/>
<wire x1="289.56" y1="52.324" x2="289.56" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="DIS3" gate="A" pin="C"/>
<wire x1="228.6" y1="40.64" x2="228.6" y2="53.34" width="0.1524" layer="91"/>
<pinref part="SEGMENTS2" gate="-3" pin="KL"/>
<wire x1="228.6" y1="53.34" x2="284.48" y2="53.34" width="0.1524" layer="91"/>
<wire x1="284.48" y1="53.34" x2="284.48" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="DIS3" gate="A" pin="D"/>
<wire x1="226.06" y1="40.64" x2="226.06" y2="54.61" width="0.1524" layer="91"/>
<pinref part="SEGMENTS2" gate="-4" pin="KL"/>
<wire x1="226.06" y1="54.61" x2="279.4" y2="54.61" width="0.1524" layer="91"/>
<wire x1="279.4" y1="54.61" x2="279.4" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="DIS3" gate="A" pin="E"/>
<wire x1="223.52" y1="40.64" x2="223.52" y2="55.88" width="0.1524" layer="91"/>
<pinref part="SEGMENTS2" gate="-5" pin="KL"/>
<wire x1="223.52" y1="55.88" x2="274.32" y2="55.88" width="0.1524" layer="91"/>
<wire x1="274.32" y1="55.88" x2="274.32" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="DIS3" gate="A" pin="F"/>
<wire x1="220.98" y1="40.64" x2="220.98" y2="57.15" width="0.1524" layer="91"/>
<wire x1="220.98" y1="57.15" x2="223.266" y2="57.15" width="0.1524" layer="91"/>
<pinref part="SEGMENTS2" gate="-6" pin="KL"/>
<wire x1="223.266" y1="57.15" x2="269.24" y2="57.15" width="0.1524" layer="91"/>
<wire x1="269.24" y1="57.15" x2="269.24" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="DIS3" gate="A" pin="G"/>
<wire x1="218.44" y1="40.64" x2="218.44" y2="58.42" width="0.1524" layer="91"/>
<wire x1="218.44" y1="58.42" x2="264.16" y2="58.42" width="0.1524" layer="91"/>
<pinref part="SEGMENTS2" gate="-7" pin="KL"/>
<wire x1="264.16" y1="58.42" x2="264.16" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="DIS2" gate="A" pin="A"/>
<wire x1="185.42" y1="40.64" x2="215.9" y2="40.64" width="0.1524" layer="91"/>
<wire x1="215.9" y1="40.64" x2="215.9" y2="63.5" width="0.1524" layer="91"/>
<wire x1="215.9" y1="63.5" x2="218.44" y2="63.5" width="0.1524" layer="91"/>
<pinref part="SEGMENTS3" gate="-1" pin="KL"/>
<wire x1="218.44" y1="63.5" x2="218.44" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="DIS2" gate="A" pin="B"/>
<wire x1="182.88" y1="40.64" x2="182.88" y2="43.18" width="0.1524" layer="91"/>
<wire x1="182.88" y1="43.18" x2="213.36" y2="43.18" width="0.1524" layer="91"/>
<pinref part="SEGMENTS3" gate="-2" pin="KL"/>
<wire x1="213.36" y1="43.18" x2="213.36" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="DIS2" gate="A" pin="C"/>
<wire x1="180.34" y1="40.64" x2="180.34" y2="45.72" width="0.1524" layer="91"/>
<wire x1="180.34" y1="45.72" x2="208.28" y2="45.72" width="0.1524" layer="91"/>
<pinref part="SEGMENTS3" gate="-3" pin="KL"/>
<wire x1="208.28" y1="45.72" x2="208.28" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="DIS2" gate="A" pin="D"/>
<wire x1="177.8" y1="40.64" x2="177.8" y2="48.26" width="0.1524" layer="91"/>
<pinref part="SEGMENTS3" gate="-4" pin="KL"/>
<wire x1="177.8" y1="48.26" x2="203.2" y2="48.26" width="0.1524" layer="91"/>
<wire x1="203.2" y1="48.26" x2="203.2" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="DIS2" gate="A" pin="E"/>
<wire x1="175.26" y1="40.64" x2="175.26" y2="50.8" width="0.1524" layer="91"/>
<wire x1="175.26" y1="50.8" x2="198.12" y2="50.8" width="0.1524" layer="91"/>
<pinref part="SEGMENTS3" gate="-5" pin="KL"/>
<wire x1="198.12" y1="50.8" x2="198.12" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="DIS2" gate="A" pin="F"/>
<wire x1="172.72" y1="40.64" x2="172.72" y2="53.34" width="0.1524" layer="91"/>
<wire x1="172.72" y1="53.34" x2="193.04" y2="53.34" width="0.1524" layer="91"/>
<pinref part="SEGMENTS3" gate="-6" pin="KL"/>
<wire x1="193.04" y1="53.34" x2="193.04" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="DIS1" gate="A" pin="A"/>
<wire x1="142.24" y1="40.64" x2="142.24" y2="45.72" width="0.1524" layer="91"/>
<pinref part="SEGMENTS1" gate="-1" pin="KL"/>
<wire x1="142.24" y1="45.72" x2="142.24" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="DIS1" gate="A" pin="B"/>
<wire x1="139.7" y1="40.64" x2="139.7" y2="53.34" width="0.1524" layer="91"/>
<wire x1="139.7" y1="53.34" x2="137.16" y2="53.34" width="0.1524" layer="91"/>
<pinref part="SEGMENTS1" gate="-2" pin="KL"/>
<wire x1="137.16" y1="53.34" x2="137.16" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="DIS1" gate="A" pin="C"/>
<wire x1="137.16" y1="40.64" x2="137.16" y2="50.8" width="0.1524" layer="91"/>
<wire x1="137.16" y1="50.8" x2="132.08" y2="50.8" width="0.1524" layer="91"/>
<pinref part="SEGMENTS1" gate="-3" pin="KL"/>
<wire x1="132.08" y1="50.8" x2="132.08" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="DIS1" gate="A" pin="D"/>
<wire x1="134.62" y1="40.64" x2="134.62" y2="48.26" width="0.1524" layer="91"/>
<wire x1="134.62" y1="48.26" x2="127" y2="48.26" width="0.1524" layer="91"/>
<pinref part="SEGMENTS1" gate="-4" pin="KL"/>
<wire x1="127" y1="48.26" x2="127" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="DIS1" gate="A" pin="F"/>
<wire x1="129.54" y1="40.64" x2="129.54" y2="43.18" width="0.1524" layer="91"/>
<wire x1="129.54" y1="43.18" x2="116.84" y2="43.18" width="0.1524" layer="91"/>
<pinref part="SEGMENTS1" gate="-6" pin="KL"/>
<wire x1="116.84" y1="43.18" x2="116.84" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="SEGMENTS1" gate="-7" pin="KL"/>
<wire x1="111.76" y1="68.58" x2="111.76" y2="45.72" width="0.1524" layer="91"/>
<wire x1="111.76" y1="45.72" x2="111.76" y2="40.64" width="0.1524" layer="91"/>
<pinref part="DIS1" gate="A" pin="G"/>
<wire x1="111.76" y1="40.64" x2="127" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="SERVE" gate="-3" pin="KL"/>
<wire x1="200.66" y1="165.1" x2="180.34" y2="165.1" width="0.1524" layer="91"/>
<wire x1="180.34" y1="165.1" x2="180.34" y2="152.4" width="0.1524" layer="91"/>
<pinref part="INPUT4" gate="-4" pin="KL"/>
<wire x1="180.34" y1="152.4" x2="167.64" y2="152.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="SERVE" gate="-1" pin="KL"/>
<wire x1="200.66" y1="154.94" x2="175.26" y2="154.94" width="0.1524" layer="91"/>
<wire x1="175.26" y1="154.94" x2="175.26" y2="157.48" width="0.1524" layer="91"/>
<pinref part="INPUT4" gate="-3" pin="KL"/>
<wire x1="175.26" y1="157.48" x2="167.64" y2="157.48" width="0.1524" layer="91"/>
<pinref part="INPUT" gate="-3" pin="KL"/>
<wire x1="91.44" y1="154.94" x2="99.06" y2="154.94" width="0.1524" layer="91"/>
<wire x1="99.06" y1="154.94" x2="99.06" y2="142.24" width="0.1524" layer="91"/>
<wire x1="99.06" y1="142.24" x2="175.26" y2="142.24" width="0.1524" layer="91"/>
<wire x1="175.26" y1="142.24" x2="175.26" y2="154.94" width="0.1524" layer="91"/>
<junction x="175.26" y="154.94"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="SERVE" gate="-2" pin="KL"/>
<wire x1="200.66" y1="160.02" x2="177.8" y2="160.02" width="0.1524" layer="91"/>
<wire x1="177.8" y1="160.02" x2="177.8" y2="162.56" width="0.1524" layer="91"/>
<pinref part="INPUT4" gate="-2" pin="KL"/>
<wire x1="177.8" y1="162.56" x2="167.64" y2="162.56" width="0.1524" layer="91"/>
<pinref part="INPUT" gate="-2" pin="KL"/>
<wire x1="91.44" y1="160.02" x2="101.6" y2="160.02" width="0.1524" layer="91"/>
<wire x1="101.6" y1="160.02" x2="101.6" y2="139.7" width="0.1524" layer="91"/>
<wire x1="101.6" y1="139.7" x2="177.8" y2="139.7" width="0.1524" layer="91"/>
<wire x1="177.8" y1="139.7" x2="177.8" y2="160.02" width="0.1524" layer="91"/>
<junction x="177.8" y="160.02"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="INPUT4" gate="-1" pin="KL"/>
<wire x1="167.64" y1="167.64" x2="172.72" y2="167.64" width="0.1524" layer="91"/>
<wire x1="172.72" y1="167.64" x2="172.72" y2="144.78" width="0.1524" layer="91"/>
<wire x1="172.72" y1="144.78" x2="96.52" y2="144.78" width="0.1524" layer="91"/>
<wire x1="96.52" y1="144.78" x2="96.52" y2="149.86" width="0.1524" layer="91"/>
<pinref part="INPUT" gate="-4" pin="KL"/>
<wire x1="96.52" y1="149.86" x2="91.44" y2="149.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="SEGMENTS4" gate="-1" pin="KL"/>
<wire x1="109.22" y1="180.34" x2="109.22" y2="195.58" width="0.1524" layer="91"/>
<pinref part="DIS6" gate="A" pin="A"/>
<wire x1="109.22" y1="195.58" x2="119.38" y2="195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="DIS6" gate="A" pin="B"/>
<wire x1="121.92" y1="195.58" x2="121.92" y2="194.564" width="0.1524" layer="91"/>
<wire x1="121.92" y1="194.564" x2="114.046" y2="194.564" width="0.1524" layer="91"/>
<pinref part="SEGMENTS4" gate="-2" pin="KL"/>
<wire x1="114.046" y1="194.564" x2="114.046" y2="180.34" width="0.1524" layer="91"/>
<wire x1="114.046" y1="180.34" x2="114.3" y2="180.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="DIS6" gate="A" pin="C"/>
<wire x1="124.46" y1="195.58" x2="124.46" y2="193.04" width="0.1524" layer="91"/>
<wire x1="124.46" y1="193.04" x2="119.38" y2="193.04" width="0.1524" layer="91"/>
<pinref part="SEGMENTS4" gate="-3" pin="KL"/>
<wire x1="119.38" y1="193.04" x2="119.38" y2="180.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="DIS6" gate="A" pin="D"/>
<wire x1="127" y1="195.58" x2="127" y2="191.516" width="0.1524" layer="91"/>
<wire x1="127" y1="191.516" x2="124.46" y2="191.516" width="0.1524" layer="91"/>
<pinref part="SEGMENTS4" gate="-4" pin="KL"/>
<wire x1="124.46" y1="191.516" x2="124.46" y2="180.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="DIS6" gate="A" pin="E"/>
<pinref part="SEGMENTS4" gate="-5" pin="KL"/>
<wire x1="129.54" y1="195.58" x2="129.54" y2="180.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="DIS6" gate="A" pin="F"/>
<wire x1="132.08" y1="195.58" x2="132.08" y2="190.5" width="0.1524" layer="91"/>
<wire x1="132.08" y1="190.5" x2="134.62" y2="190.5" width="0.1524" layer="91"/>
<pinref part="SEGMENTS4" gate="-6" pin="KL"/>
<wire x1="134.62" y1="190.5" x2="134.62" y2="180.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="DIS6" gate="A" pin="G"/>
<wire x1="134.62" y1="195.58" x2="134.62" y2="191.516" width="0.1524" layer="91"/>
<pinref part="SEGMENTS4" gate="-7" pin="KL"/>
<wire x1="134.62" y1="191.516" x2="139.7" y2="191.516" width="0.1524" layer="91"/>
<wire x1="139.7" y1="191.516" x2="139.7" y2="180.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="SEGMENTS" gate="-7" pin="KL"/>
<wire x1="63.5" y1="177.8" x2="63.5" y2="182.88" width="0.1524" layer="91"/>
<wire x1="63.5" y1="182.88" x2="93.98" y2="182.88" width="0.1524" layer="91"/>
<pinref part="DIS5" gate="A" pin="G"/>
<wire x1="93.98" y1="182.88" x2="93.98" y2="195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="SEGMENTS" gate="-6" pin="KL"/>
<wire x1="58.42" y1="177.8" x2="58.42" y2="184.15" width="0.1524" layer="91"/>
<pinref part="DIS5" gate="A" pin="F"/>
<wire x1="58.42" y1="184.15" x2="91.44" y2="184.15" width="0.1524" layer="91"/>
<wire x1="91.44" y1="184.15" x2="91.44" y2="195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="DIS5" gate="A" pin="E"/>
<wire x1="88.9" y1="195.58" x2="88.9" y2="185.42" width="0.1524" layer="91"/>
<wire x1="88.9" y1="185.42" x2="53.34" y2="185.42" width="0.1524" layer="91"/>
<pinref part="SEGMENTS" gate="-5" pin="KL"/>
<wire x1="53.34" y1="185.42" x2="53.34" y2="177.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="SEGMENTS" gate="-4" pin="KL"/>
<wire x1="48.26" y1="177.8" x2="48.26" y2="187.96" width="0.1524" layer="91"/>
<wire x1="48.26" y1="187.96" x2="86.36" y2="187.96" width="0.1524" layer="91"/>
<pinref part="DIS5" gate="A" pin="D"/>
<wire x1="86.36" y1="187.96" x2="86.36" y2="195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="SEGMENTS" gate="-3" pin="KL"/>
<wire x1="43.18" y1="177.8" x2="43.18" y2="190.5" width="0.1524" layer="91"/>
<wire x1="43.18" y1="190.5" x2="83.82" y2="190.5" width="0.1524" layer="91"/>
<pinref part="DIS5" gate="A" pin="C"/>
<wire x1="83.82" y1="190.5" x2="83.82" y2="195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="SEGMENTS" gate="-2" pin="KL"/>
<wire x1="38.1" y1="177.8" x2="38.1" y2="193.04" width="0.1524" layer="91"/>
<wire x1="38.1" y1="193.04" x2="81.28" y2="193.04" width="0.1524" layer="91"/>
<pinref part="DIS5" gate="A" pin="B"/>
<wire x1="81.28" y1="193.04" x2="81.28" y2="195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="DIS5" gate="A" pin="A"/>
<pinref part="SEGMENTS" gate="-1" pin="KL"/>
<wire x1="78.74" y1="195.58" x2="33.02" y2="195.58" width="0.1524" layer="91"/>
<wire x1="33.02" y1="195.58" x2="33.02" y2="177.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="5V" class="0">
<segment>
<pinref part="POWER" gate="-2" pin="KL"/>
<wire x1="317.5" y1="200.66" x2="378.46" y2="200.66" width="0.1524" layer="91"/>
<wire x1="378.46" y1="200.66" x2="378.46" y2="60.96" width="0.1524" layer="91"/>
<wire x1="378.46" y1="60.96" x2="304.8" y2="60.96" width="0.1524" layer="91"/>
<wire x1="304.8" y1="60.96" x2="304.8" y2="76.2" width="0.1524" layer="91"/>
<pinref part="PW6" gate="-2" pin="KL"/>
<wire x1="304.8" y1="76.2" x2="312.42" y2="76.2" width="0.1524" layer="91"/>
<pinref part="PW2" gate="-2" pin="KL"/>
<wire x1="236.22" y1="76.2" x2="231.14" y2="76.2" width="0.1524" layer="91"/>
<wire x1="231.14" y1="76.2" x2="231.14" y2="63.5" width="0.1524" layer="91"/>
<wire x1="231.14" y1="63.5" x2="231.14" y2="60.96" width="0.1524" layer="91"/>
<wire x1="231.14" y1="60.96" x2="304.8" y2="60.96" width="0.1524" layer="91"/>
<junction x="304.8" y="60.96"/>
<pinref part="PW1" gate="-2" pin="KL"/>
<wire x1="83.82" y1="76.2" x2="78.74" y2="76.2" width="0.1524" layer="91"/>
<wire x1="78.74" y1="76.2" x2="78.74" y2="60.96" width="0.1524" layer="91"/>
<wire x1="78.74" y1="60.96" x2="154.94" y2="60.96" width="0.1524" layer="91"/>
<pinref part="PW3" gate="-2" pin="KL"/>
<wire x1="154.94" y1="60.96" x2="154.94" y2="76.2" width="0.1524" layer="91"/>
<wire x1="154.94" y1="76.2" x2="160.02" y2="76.2" width="0.1524" layer="91"/>
<wire x1="231.14" y1="60.96" x2="154.94" y2="60.96" width="0.1524" layer="91"/>
<junction x="231.14" y="60.96"/>
<junction x="154.94" y="60.96"/>
<pinref part="PW5" gate="-2" pin="KL"/>
<wire x1="40.64" y1="121.92" x2="40.64" y2="134.62" width="0.1524" layer="91"/>
<wire x1="40.64" y1="134.62" x2="71.12" y2="134.62" width="0.1524" layer="91"/>
<wire x1="71.12" y1="134.62" x2="71.12" y2="76.2" width="0.1524" layer="91"/>
<wire x1="71.12" y1="76.2" x2="78.74" y2="76.2" width="0.1524" layer="91"/>
<junction x="78.74" y="76.2"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="PW" gate="-2" pin="KL"/>
<wire x1="91.44" y1="170.18" x2="99.06" y2="170.18" width="0.1524" layer="91"/>
<wire x1="99.06" y1="170.18" x2="99.06" y2="187.96" width="0.1524" layer="91"/>
<wire x1="99.06" y1="187.96" x2="175.26" y2="187.96" width="0.1524" layer="91"/>
<wire x1="175.26" y1="187.96" x2="175.26" y2="172.72" width="0.1524" layer="91"/>
<pinref part="PW4" gate="-2" pin="KL"/>
<wire x1="175.26" y1="172.72" x2="167.64" y2="172.72" width="0.1524" layer="91"/>
<pinref part="INFRA_POWER" gate="-2" pin="KL"/>
<wire x1="287.02" y1="226.06" x2="287.02" y2="233.68" width="0.1524" layer="91"/>
<wire x1="287.02" y1="233.68" x2="175.26" y2="233.68" width="0.1524" layer="91"/>
<wire x1="175.26" y1="233.68" x2="175.26" y2="187.96" width="0.1524" layer="91"/>
<junction x="175.26" y="187.96"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="DIS2" gate="A" pin="G"/>
<wire x1="170.18" y1="40.64" x2="170.18" y2="55.88" width="0.1524" layer="91"/>
<wire x1="170.18" y1="55.88" x2="187.96" y2="55.88" width="0.1524" layer="91"/>
<pinref part="SEGMENTS3" gate="-7" pin="KL"/>
<wire x1="187.96" y1="55.88" x2="187.96" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="SEGMENTS1" gate="-5" pin="KL"/>
<wire x1="121.92" y1="68.58" x2="121.92" y2="45.72" width="0.1524" layer="91"/>
<wire x1="121.92" y1="45.72" x2="132.08" y2="45.72" width="0.1524" layer="91"/>
<pinref part="DIS1" gate="A" pin="E"/>
<wire x1="132.08" y1="45.72" x2="132.08" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<pinref part="SETS" gate="-1" pin="KL"/>
<wire x1="200.66" y1="170.18" x2="187.96" y2="170.18" width="0.1524" layer="91"/>
<wire x1="187.96" y1="170.18" x2="187.96" y2="127" width="0.1524" layer="91"/>
<wire x1="187.96" y1="127" x2="182.88" y2="127" width="0.1524" layer="91"/>
<pinref part="INPUT5" gate="-3" pin="KL"/>
<wire x1="182.88" y1="127" x2="55.88" y2="127" width="0.1524" layer="91"/>
<wire x1="55.88" y1="127" x2="55.88" y2="121.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="SETS" gate="-2" pin="KL"/>
<wire x1="200.66" y1="175.26" x2="185.42" y2="175.26" width="0.1524" layer="91"/>
<wire x1="185.42" y1="175.26" x2="185.42" y2="129.54" width="0.1524" layer="91"/>
<wire x1="185.42" y1="129.54" x2="50.8" y2="129.54" width="0.1524" layer="91"/>
<pinref part="INPUT5" gate="-2" pin="KL"/>
<wire x1="50.8" y1="129.54" x2="50.8" y2="121.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<pinref part="INPUT5" gate="-4" pin="KL"/>
<wire x1="60.96" y1="121.92" x2="60.96" y2="132.08" width="0.1524" layer="91"/>
<wire x1="60.96" y1="132.08" x2="182.88" y2="132.08" width="0.1524" layer="91"/>
<wire x1="182.88" y1="132.08" x2="182.88" y2="180.34" width="0.1524" layer="91"/>
<pinref part="SETS" gate="-3" pin="KL"/>
<wire x1="182.88" y1="180.34" x2="200.66" y2="180.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$57" class="0">
<segment>
<pinref part="SEGMENTS5" gate="-1" pin="KL"/>
<wire x1="33.02" y1="63.5" x2="27.94" y2="63.5" width="0.1524" layer="91"/>
<wire x1="27.94" y1="63.5" x2="27.94" y2="55.88" width="0.1524" layer="91"/>
<wire x1="27.94" y1="55.88" x2="50.8" y2="55.88" width="0.1524" layer="91"/>
<pinref part="SERVE4" gate="G$1" pin="C"/>
<wire x1="50.8" y1="55.88" x2="50.8" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$58" class="0">
<segment>
<pinref part="SEGMENTS5" gate="-2" pin="KL"/>
<wire x1="33.02" y1="68.58" x2="25.4" y2="68.58" width="0.1524" layer="91"/>
<wire x1="25.4" y1="68.58" x2="25.4" y2="53.34" width="0.1524" layer="91"/>
<wire x1="25.4" y1="53.34" x2="38.1" y2="53.34" width="0.1524" layer="91"/>
<pinref part="SERVE3" gate="G$1" pin="C"/>
<wire x1="38.1" y1="53.34" x2="38.1" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$59" class="0">
<segment>
<pinref part="SEGMENTS5" gate="-3" pin="KL"/>
<wire x1="33.02" y1="73.66" x2="22.86" y2="73.66" width="0.1524" layer="91"/>
<wire x1="22.86" y1="73.66" x2="22.86" y2="50.8" width="0.1524" layer="91"/>
<wire x1="22.86" y1="50.8" x2="25.4" y2="50.8" width="0.1524" layer="91"/>
<pinref part="SERVE2" gate="G$1" pin="C"/>
<wire x1="25.4" y1="50.8" x2="25.4" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$60" class="0">
<segment>
<pinref part="SEGMENTS5" gate="-4" pin="KL"/>
<wire x1="33.02" y1="78.74" x2="12.7" y2="78.74" width="0.1524" layer="91"/>
<pinref part="SERVE1" gate="G$1" pin="C"/>
<wire x1="12.7" y1="78.74" x2="12.7" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
