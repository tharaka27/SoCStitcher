<project xmlns="com.autoesl.autopilot.project" top="warp_stream_accel" name="warpPerpective">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../warpPerspective_tb.cpp" sc="0" tb="1" cflags=" -I../../arrayFAST/.lib/include -D__XFCV_HLS_MODE__ --std=c++0x -Wno-unknown-pragmas" blackbox="false"/>
        <file name="warpPerpective/warpPerspective_accel.h" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="warpPerpective/warpPerspective_accel.cpp" sc="0" tb="false" cflags="-D__XFCV_HLS_MODE__ -IarrayFAST/.lib/include --std=c++0x -Wno-unknown-pragmas" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="FullHD_solution" status="active"/>
    </solutions>
</project>

