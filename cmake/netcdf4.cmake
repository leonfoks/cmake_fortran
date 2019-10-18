if ("$ENV{NETCDF4_F_ROOT}" STREQUAL "")
    message(FATAL_ERROR "Could not find NetCDF install directory.  Please create an environment variable NETCDF4_F_ROOT to the install directory.")
else()
    set(NETCDF4_F_ROOT "$ENV{NETCDF4_F_ROOT}" CACHE INTERNAL "Get the NetCDF install directory")
    message("Using NetCDF installed at ${NETCDF4_F_ROOT}")

    set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -I${NETCDF4_F_ROOT}/include")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -L${NETCDF4_F_ROOT}/lib -lnetcdf")
endif()
