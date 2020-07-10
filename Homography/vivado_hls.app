<project xmlns="com.autoesl.autopilot.project" name="Homography" top="findHomography_accel">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow askAgain="false" name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../homography_tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="Homography/homography.h" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="Homography/homography.cpp" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="Homography/gussian_elimination.h" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="Homography/gussian_elimination.cpp" sc="0" tb="false" cflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="inactive"/>
        <solution name="solution2" status="active"/>
    </solutions>
</project>

