LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

delibs_dir := $(LOCAL_PATH)/framework/delibs
deqp_dir := $(LOCAL_PATH)/

LOCAL_MODULE_TAGS := tests
LOCAL_MODULE := libdeqp
LOCAL_SRC_FILES := \
	execserver/xsDefs.cpp \
	execserver/xsExecutionServer.cpp \
	execserver/xsPosixFileReader.cpp \
	execserver/xsPosixTestProcess.cpp \
	execserver/xsProtocol.cpp \
	execserver/xsTcpServer.cpp \
	execserver/xsTestDriver.cpp \
	execserver/xsTestProcess.cpp \
	executor/xeBatchExecutor.cpp \
	executor/xeBatchResult.cpp \
	executor/xeCallQueue.cpp \
	executor/xeCommLink.cpp \
	executor/xeContainerFormatParser.cpp \
	executor/xeDefs.cpp \
	executor/xeLocalTcpIpLink.cpp \
	executor/xeTcpIpLink.cpp \
	executor/xeTestCase.cpp \
	executor/xeTestCaseListParser.cpp \
	executor/xeTestCaseResult.cpp \
	executor/xeTestLogParser.cpp \
	executor/xeTestLogWriter.cpp \
	executor/xeTestResultParser.cpp \
	executor/xeXMLParser.cpp \
	executor/xeXMLWriter.cpp \
	framework/common/tcuApp.cpp \
	framework/common/tcuArray.cpp \
	framework/common/tcuAstcUtil.cpp \
	framework/common/tcuBilinearImageCompare.cpp \
	framework/common/tcuCommandLine.cpp \
	framework/common/tcuCompressedTexture.cpp \
	framework/common/tcuCPUWarmup.cpp \
	framework/common/tcuDefs.cpp \
	framework/common/tcuEither.cpp \
	framework/common/tcuFactoryRegistry.cpp \
	framework/common/tcuFloat.cpp \
	framework/common/tcuFloatFormat.cpp \
	framework/common/tcuFunctionLibrary.cpp \
	framework/common/tcuFuzzyImageCompare.cpp \
	framework/common/tcuImageCompare.cpp \
	framework/common/tcuImageIO.cpp \
	framework/common/tcuInterval.cpp \
	framework/common/tcuMatrix.cpp \
	framework/common/tcuMaybe.cpp \
	framework/common/tcuPlatform.cpp \
	framework/common/tcuRandomValueIterator.cpp \
	framework/common/tcuRenderTarget.cpp \
	framework/common/tcuResource.cpp \
	framework/common/tcuResultCollector.cpp \
	framework/common/tcuRGBA.cpp \
	framework/common/tcuSeedBuilder.cpp \
	framework/common/tcuStringTemplate.cpp \
	framework/common/tcuSurface.cpp \
	framework/common/tcuTestCase.cpp \
	framework/common/tcuTestContext.cpp \
	framework/common/tcuTestHierarchyIterator.cpp \
	framework/common/tcuTestHierarchyUtil.cpp \
	framework/common/tcuTestLog.cpp \
	framework/common/tcuTestPackage.cpp \
	framework/common/tcuTestSessionExecutor.cpp \
	framework/common/tcuTexCompareVerifier.cpp \
	framework/common/tcuTexLookupVerifier.cpp \
	framework/common/tcuTexture.cpp \
	framework/common/tcuTextureUtil.cpp \
	framework/common/tcuTexVerifierUtil.cpp \
	framework/common/tcuThreadUtil.cpp \
	framework/delibs/debase/deDefs.c \
	framework/delibs/debase/deFloat16.c \
	framework/delibs/debase/deInt32.c \
	framework/delibs/debase/deInt32Test.c \
	framework/delibs/debase/deMath.c \
	framework/delibs/debase/deMathTest.c \
	framework/delibs/debase/deMemory.c \
	framework/delibs/debase/deRandom.c \
	framework/delibs/debase/deString.c \
	framework/delibs/debase/deSha1.c \
	framework/delibs/decpp/deAppendList.cpp \
	framework/delibs/decpp/deArrayBuffer.cpp \
	framework/delibs/decpp/deArrayUtil.cpp \
	framework/delibs/decpp/deBlockBuffer.cpp \
	framework/delibs/decpp/deCommandLine.cpp \
	framework/delibs/decpp/deDefs.cpp \
	framework/delibs/decpp/deDirectoryIterator.cpp \
	framework/delibs/decpp/deDynamicLibrary.cpp \
	framework/delibs/decpp/deFilePath.cpp \
	framework/delibs/decpp/deMemPool.cpp \
	framework/delibs/decpp/deMeta.cpp \
	framework/delibs/decpp/deMutex.cpp \
	framework/delibs/decpp/dePoolArray.cpp \
	framework/delibs/decpp/dePoolString.cpp \
	framework/delibs/decpp/deProcess.cpp \
	framework/delibs/decpp/deRandom.cpp \
	framework/delibs/decpp/deRingBuffer.cpp \
	framework/delibs/decpp/deSemaphore.cpp \
	framework/delibs/decpp/deSharedPtr.cpp \
	framework/delibs/decpp/deSocket.cpp \
	framework/delibs/decpp/deSpinBarrier.cpp \
	framework/delibs/decpp/deSTLUtil.cpp \
	framework/delibs/decpp/deStringUtil.cpp \
	framework/delibs/decpp/deThread.cpp \
	framework/delibs/decpp/deThreadLocal.cpp \
	framework/delibs/decpp/deThreadSafeRingBuffer.cpp \
	framework/delibs/decpp/deUniquePtr.cpp \
	framework/delibs/decpp/deSha1.cpp \
	framework/delibs/deimage/deImage.c \
	framework/delibs/deimage/deTarga.c \
	framework/delibs/depool/deMemPool.c \
	framework/delibs/depool/dePoolArray.c \
	framework/delibs/depool/dePoolHashArray.c \
	framework/delibs/depool/dePoolHash.c \
	framework/delibs/depool/dePoolHashSet.c \
	framework/delibs/depool/dePoolHeap.c \
	framework/delibs/depool/dePoolMultiSet.c \
	framework/delibs/depool/dePoolSet.c \
	framework/delibs/depool/dePoolStringBuilder.c \
	framework/delibs/depool/dePoolTest.c \
	framework/delibs/destream/deFileStream.c \
	framework/delibs/destream/deRingbuffer.c \
	framework/delibs/destream/deStreamCpyThread.c \
	framework/delibs/destream/deThreadStream.c \
	framework/delibs/dethread/deAtomic.c \
	framework/delibs/dethread/deSingleton.c \
	framework/delibs/dethread/deThreadTest.c \
	framework/delibs/dethread/unix/deMutexUnix.c \
	framework/delibs/dethread/unix/deNamedSemaphoreUnix.c \
	framework/delibs/dethread/unix/deSemaphoreUnix.c \
	framework/delibs/dethread/unix/deThreadLocalUnix.c \
	framework/delibs/dethread/unix/deThreadUnix.c \
	framework/delibs/deutil/deClock.c \
	framework/delibs/deutil/deCommandLine.c \
	framework/delibs/deutil/deDynamicLibrary.c \
	framework/delibs/deutil/deFile.c \
	framework/delibs/deutil/deProcess.c \
	framework/delibs/deutil/deSocket.c \
	framework/delibs/deutil/deTimer.c \
	framework/delibs/deutil/deTimerTest.c \
	framework/egl/egluCallLogWrapper.cpp \
	framework/egl/egluConfigFilter.cpp \
	framework/egl/egluConfigInfo.cpp \
	framework/egl/egluDefs.cpp \
	framework/egl/egluGLContextFactory.cpp \
	framework/egl/egluGLFunctionLoader.cpp \
	framework/egl/egluGLUtil.cpp \
	framework/egl/egluNativeDisplay.cpp \
	framework/egl/egluNativePixmap.cpp \
	framework/egl/egluNativeWindow.cpp \
	framework/egl/egluPlatform.cpp \
	framework/egl/egluStaticESLibrary.cpp \
	framework/egl/egluStrUtil.cpp \
	framework/egl/egluUnique.cpp \
	framework/egl/egluUtil.cpp \
	framework/egl/wrapper/eglwDefs.cpp \
	framework/egl/wrapper/eglwFunctions.cpp \
	framework/egl/wrapper/eglwLibrary.cpp \
	framework/opengl/gluCallLogWrapper.cpp \
	framework/opengl/gluContextFactory.cpp \
	framework/opengl/gluContextInfo.cpp \
	framework/opengl/gluDefs.cpp \
	framework/opengl/gluDrawUtil.cpp \
	framework/opengl/gluDummyRenderContext.cpp \
	framework/opengl/gluES3PlusWrapperContext.cpp \
	framework/opengl/gluFboRenderContext.cpp \
	framework/opengl/gluObjectWrapper.cpp \
	framework/opengl/gluPixelTransfer.cpp \
	framework/opengl/gluPlatform.cpp \
	framework/opengl/gluProgramInterfaceQuery.cpp \
	framework/opengl/gluRenderConfig.cpp \
	framework/opengl/gluRenderContext.cpp \
	framework/opengl/gluShaderLibrary.cpp \
	framework/opengl/gluShaderProgram.cpp \
	framework/opengl/gluShaderUtil.cpp \
	framework/opengl/gluStateReset.cpp \
	framework/opengl/gluStrUtil.cpp \
	framework/opengl/gluTexture.cpp \
	framework/opengl/gluTextureUtil.cpp \
	framework/opengl/gluVarType.cpp \
	framework/opengl/gluVarTypeUtil.cpp \
	framework/opengl/simplereference/sglrContext.cpp \
	framework/opengl/simplereference/sglrContextUtil.cpp \
	framework/opengl/simplereference/sglrContextWrapper.cpp \
	framework/opengl/simplereference/sglrGLContext.cpp \
	framework/opengl/simplereference/sglrReferenceContext.cpp \
	framework/opengl/simplereference/sglrReferenceUtils.cpp \
	framework/opengl/simplereference/sglrShaderProgram.cpp \
	framework/opengl/wrapper/glwDefs.cpp \
	framework/opengl/wrapper/glwFunctions.cpp \
	framework/opengl/wrapper/glwInitES20Direct.cpp \
	framework/opengl/wrapper/glwInitES30Direct.cpp \
	framework/opengl/wrapper/glwInitFunctions.cpp \
	framework/opengl/wrapper/glwWrapper.cpp \
	framework/platform/android/tcuAndroidAssets.cpp \
	framework/platform/android/tcuAndroidExecService.cpp \
	framework/platform/android/tcuAndroidInternals.cpp \
	framework/platform/android/tcuAndroidJNI.cpp \
	framework/platform/android/tcuAndroidMain.cpp \
	framework/platform/android/tcuAndroidNativeActivity.cpp \
	framework/platform/android/tcuAndroidPlatformCapabilityQueryJNI.cpp \
	framework/platform/android/tcuAndroidPlatform.cpp \
	framework/platform/android/tcuAndroidRenderActivity.cpp \
	framework/platform/android/tcuAndroidTestActivity.cpp \
	framework/platform/android/tcuAndroidUtil.cpp \
	framework/platform/android/tcuAndroidWindow.cpp \
	framework/platform/android/tcuTestLogParserJNI.cpp \
	framework/qphelper/qpCrashHandler.c \
	framework/qphelper/qpDebugOut.c \
	framework/qphelper/qpInfo.c \
	framework/qphelper/qpTestLog.c \
	framework/qphelper/qpWatchDog.c \
	framework/qphelper/qpXmlWriter.c \
	framework/randomshaders/rsgBinaryOps.cpp \
	framework/randomshaders/rsgBuiltinFunctions.cpp \
	framework/randomshaders/rsgDefs.cpp \
	framework/randomshaders/rsgExecutionContext.cpp \
	framework/randomshaders/rsgExpression.cpp \
	framework/randomshaders/rsgExpressionGenerator.cpp \
	framework/randomshaders/rsgFunctionGenerator.cpp \
	framework/randomshaders/rsgGeneratorState.cpp \
	framework/randomshaders/rsgNameAllocator.cpp \
	framework/randomshaders/rsgParameters.cpp \
	framework/randomshaders/rsgPrettyPrinter.cpp \
	framework/randomshaders/rsgProgramExecutor.cpp \
	framework/randomshaders/rsgProgramGenerator.cpp \
	framework/randomshaders/rsgSamplers.cpp \
	framework/randomshaders/rsgShader.cpp \
	framework/randomshaders/rsgShaderGenerator.cpp \
	framework/randomshaders/rsgStatement.cpp \
	framework/randomshaders/rsgTest.cpp \
	framework/randomshaders/rsgToken.cpp \
	framework/randomshaders/rsgUtils.cpp \
	framework/randomshaders/rsgVariable.cpp \
	framework/randomshaders/rsgVariableManager.cpp \
	framework/randomshaders/rsgVariableType.cpp \
	framework/randomshaders/rsgVariableValue.cpp \
	framework/referencerenderer/rrDefs.cpp \
	framework/referencerenderer/rrFragmentOperations.cpp \
	framework/referencerenderer/rrMultisamplePixelBufferAccess.cpp \
	framework/referencerenderer/rrPrimitivePacket.cpp \
	framework/referencerenderer/rrRasterizer.cpp \
	framework/referencerenderer/rrRenderer.cpp \
	framework/referencerenderer/rrShaders.cpp \
	framework/referencerenderer/rrShadingContext.cpp \
	framework/referencerenderer/rrVertexAttrib.cpp \
	framework/referencerenderer/rrVertexPacket.cpp \
	modules/egl/teglAndroidUtil.cpp \
	modules/egl/teglApiCase.cpp \
	modules/egl/teglBufferAgeTests.cpp \
	modules/egl/teglChooseConfigReference.cpp \
	modules/egl/teglChooseConfigTests.cpp \
	modules/egl/teglClientExtensionTests.cpp \
	modules/egl/teglColorClearCase.cpp \
	modules/egl/teglColorClearTests.cpp \
	modules/egl/teglConfigList.cpp \
	modules/egl/teglCreateContextExtTests.cpp \
	modules/egl/teglCreateContextTests.cpp \
	modules/egl/teglCreateSurfaceTests.cpp \
	modules/egl/teglGetProcAddressTests.cpp \
	modules/egl/teglGLES1RenderUtil.cpp \
	modules/egl/teglGLES2RenderUtil.cpp \
	modules/egl/teglGLES2SharedRenderingPerfTests.cpp \
	modules/egl/teglGLES2SharingTests.cpp \
	modules/egl/teglGLES2SharingThreadedTests.cpp \
	modules/egl/teglImageFormatTests.cpp \
	modules/egl/teglImageTests.cpp \
	modules/egl/teglImageUtil.cpp \
	modules/egl/teglInfoTests.cpp \
	modules/egl/teglMakeCurrentPerfTests.cpp \
	modules/egl/teglMemoryStressTests.cpp \
	modules/egl/teglMultiThreadTests.cpp \
	modules/egl/teglNativeColorMappingTests.cpp \
	modules/egl/teglNativeCoordMappingTests.cpp \
	modules/egl/teglNegativeApiTests.cpp \
	modules/egl/teglNegativePartialUpdateTests.cpp \
	modules/egl/teglPreservingSwapTests.cpp \
	modules/egl/teglPartialUpdateTests.cpp \
	modules/egl/teglQueryConfigTests.cpp \
	modules/egl/teglQueryContextTests.cpp \
	modules/egl/teglQuerySurfaceTests.cpp \
	modules/egl/teglRenderCase.cpp \
	modules/egl/teglRenderTests.cpp \
	modules/egl/teglResizeTests.cpp \
	modules/egl/teglSimpleConfigCase.cpp \
	modules/egl/teglSurfacelessContextTests.cpp \
	modules/egl/teglSwapBuffersTests.cpp \
	modules/egl/teglSwapBuffersWithDamageTests.cpp \
	modules/egl/teglSyncTests.cpp \
	modules/egl/teglTestCase.cpp \
	modules/egl/teglTestPackage.cpp \
	modules/egl/teglTestPackageEntry.cpp \
	modules/egl/teglVGRenderUtil.cpp \
	modules/gles2/tes2CapabilityTests.cpp \
	modules/gles2/tes2Context.cpp \
	modules/gles2/tes2InfoTests.cpp \
	modules/gles2/tes2TestCase.cpp \
	modules/gles2/tes2TestPackage.cpp \
	modules/gles2/tes2TestPackageEntry.cpp \
	modules/gles2/accuracy/es2aAccuracyTests.cpp \
	modules/gles2/accuracy/es2aTextureFilteringTests.cpp \
	modules/gles2/accuracy/es2aTextureMipmapTests.cpp \
	modules/gles2/accuracy/es2aVaryingInterpolationTests.cpp \
	modules/gles2/functional/es2fApiCase.cpp \
	modules/gles2/functional/es2fAttribLocationTests.cpp \
	modules/gles2/functional/es2fBlendTests.cpp \
	modules/gles2/functional/es2fBooleanStateQueryTests.cpp \
	modules/gles2/functional/es2fBufferObjectQueryTests.cpp \
	modules/gles2/functional/es2fBufferTestUtil.cpp \
	modules/gles2/functional/es2fBufferWriteTests.cpp \
	modules/gles2/functional/es2fClippingTests.cpp \
	modules/gles2/functional/es2fColorClearTest.cpp \
	modules/gles2/functional/es2fDebugMarkerTests.cpp \
	modules/gles2/functional/es2fDefaultVertexAttributeTests.cpp \
	modules/gles2/functional/es2fDepthRangeTests.cpp \
	modules/gles2/functional/es2fDepthStencilClearTests.cpp \
	modules/gles2/functional/es2fDepthStencilTests.cpp \
	modules/gles2/functional/es2fDepthTests.cpp \
	modules/gles2/functional/es2fDitheringTests.cpp \
	modules/gles2/functional/es2fDrawTests.cpp \
	modules/gles2/functional/es2fFboApiTest.cpp \
	modules/gles2/functional/es2fFboCompletenessTests.cpp \
	modules/gles2/functional/es2fFboRenderTest.cpp \
	modules/gles2/functional/es2fFboStateQueryTests.cpp \
	modules/gles2/functional/es2fFloatStateQueryTests.cpp \
	modules/gles2/functional/es2fFlushFinishTests.cpp \
	modules/gles2/functional/es2fFragOpInteractionTests.cpp \
	modules/gles2/functional/es2fFunctionalTests.cpp \
	modules/gles2/functional/es2fImplementationLimitTests.cpp \
	modules/gles2/functional/es2fIntegerStateQueryTests.cpp \
	modules/gles2/functional/es2fLifetimeTests.cpp \
	modules/gles2/functional/es2fLightAmountTest.cpp \
	modules/gles2/functional/es2fMultisampleTests.cpp \
	modules/gles2/functional/es2fNegativeBufferApiTests.cpp \
	modules/gles2/functional/es2fNegativeFragmentApiTests.cpp \
	modules/gles2/functional/es2fNegativeShaderApiTests.cpp \
	modules/gles2/functional/es2fNegativeStateApiTests.cpp \
	modules/gles2/functional/es2fNegativeTextureApiTests.cpp \
	modules/gles2/functional/es2fNegativeVertexArrayApiTests.cpp \
	modules/gles2/functional/es2fPolygonOffsetTests.cpp \
	modules/gles2/functional/es2fPrerequisiteTests.cpp \
	modules/gles2/functional/es2fRandomFragmentOpTests.cpp \
	modules/gles2/functional/es2fRandomShaderTests.cpp \
	modules/gles2/functional/es2fRasterizationTests.cpp \
	modules/gles2/functional/es2fRboStateQueryTests.cpp \
	modules/gles2/functional/es2fReadPixelsTests.cpp \
	modules/gles2/functional/es2fScissorTests.cpp \
	modules/gles2/functional/es2fShaderAlgorithmTests.cpp \
	modules/gles2/functional/es2fShaderApiTests.cpp \
	modules/gles2/functional/es2fShaderBuiltinVarTests.cpp \
	modules/gles2/functional/es2fShaderConstExprTests.cpp \
	modules/gles2/functional/es2fShaderDiscardTests.cpp \
	modules/gles2/functional/es2fShaderExecuteTest.cpp \
	modules/gles2/functional/es2fShaderFragDataTests.cpp \
	modules/gles2/functional/es2fShaderIndexingTests.cpp \
	modules/gles2/functional/es2fShaderInvarianceTests.cpp \
	modules/gles2/functional/es2fShaderLoopTests.cpp \
	modules/gles2/functional/es2fShaderMatrixTests.cpp \
	modules/gles2/functional/es2fShaderOperatorTests.cpp \
	modules/gles2/functional/es2fShaderReturnTests.cpp \
	modules/gles2/functional/es2fShaderStateQueryTests.cpp \
	modules/gles2/functional/es2fShaderStructTests.cpp \
	modules/gles2/functional/es2fShaderTextureFunctionTests.cpp \
	modules/gles2/functional/es2fStencilTests.cpp \
	modules/gles2/functional/es2fStringQueryTests.cpp \
	modules/gles2/functional/es2fTextureCompletenessTests.cpp \
	modules/gles2/functional/es2fTextureFilteringTests.cpp \
	modules/gles2/functional/es2fTextureFormatTests.cpp \
	modules/gles2/functional/es2fTextureMipmapTests.cpp \
	modules/gles2/functional/es2fTextureSizeTests.cpp \
	modules/gles2/functional/es2fTextureSpecificationTests.cpp \
	modules/gles2/functional/es2fTextureStateQueryTests.cpp \
	modules/gles2/functional/es2fTextureUnitTests.cpp \
	modules/gles2/functional/es2fTextureWrapTests.cpp \
	modules/gles2/functional/es2fUniformApiTests.cpp \
	modules/gles2/functional/es2fVertexArrayTest.cpp \
	modules/gles2/functional/es2fVertexTextureTests.cpp \
	modules/gles2/performance/es2pBlendTests.cpp \
	modules/gles2/performance/es2pDrawCallBatchingTests.cpp \
	modules/gles2/performance/es2pPerformanceTests.cpp \
	modules/gles2/performance/es2pRedundantStateChangeTests.cpp \
	modules/gles2/performance/es2pShaderCompilationCases.cpp \
	modules/gles2/performance/es2pShaderCompilerTests.cpp \
	modules/gles2/performance/es2pShaderControlStatementTests.cpp \
	modules/gles2/performance/es2pShaderOperatorTests.cpp \
	modules/gles2/performance/es2pShaderOptimizationTests.cpp \
	modules/gles2/performance/es2pStateChangeCallTests.cpp \
	modules/gles2/performance/es2pStateChangeTests.cpp \
	modules/gles2/performance/es2pTextureCases.cpp \
	modules/gles2/performance/es2pTextureCountTests.cpp \
	modules/gles2/performance/es2pTextureFilteringTests.cpp \
	modules/gles2/performance/es2pTextureFormatTests.cpp \
	modules/gles2/performance/es2pTextureUploadTests.cpp \
	modules/gles2/stress/es2sDrawTests.cpp \
	modules/gles2/stress/es2sLongRunningTests.cpp \
	modules/gles2/stress/es2sMemoryTests.cpp \
	modules/gles2/stress/es2sSpecialFloatTests.cpp \
	modules/gles2/stress/es2sStressTests.cpp \
	modules/gles2/stress/es2sVertexArrayTests.cpp \
	modules/gles3/accuracy/es3aAccuracyTests.cpp \
	modules/gles3/accuracy/es3aTextureFilteringTests.cpp \
	modules/gles3/accuracy/es3aTextureMipmapTests.cpp \
	modules/gles3/accuracy/es3aVaryingInterpolationTests.cpp \
	modules/gles3/functional/es3fApiCase.cpp \
	modules/gles3/functional/es3fASTCDecompressionCases.cpp \
	modules/gles3/functional/es3fAttribLocationTests.cpp \
	modules/gles3/functional/es3fBlendTests.cpp \
	modules/gles3/functional/es3fBooleanStateQueryTests.cpp \
	modules/gles3/functional/es3fBufferCopyTests.cpp \
	modules/gles3/functional/es3fBufferMapTests.cpp \
	modules/gles3/functional/es3fBufferObjectQueryTests.cpp \
	modules/gles3/functional/es3fBufferWriteTests.cpp \
	modules/gles3/functional/es3fBuiltinPrecisionTests.cpp \
	modules/gles3/functional/es3fClippingTests.cpp \
	modules/gles3/functional/es3fColorClearTest.cpp \
	modules/gles3/functional/es3fCompressedTextureTests.cpp \
	modules/gles3/functional/es3fDefaultVertexArrayObjectTests.cpp \
	modules/gles3/functional/es3fDefaultVertexAttributeTests.cpp \
	modules/gles3/functional/es3fDepthStencilClearTests.cpp \
	modules/gles3/functional/es3fDepthStencilTests.cpp \
	modules/gles3/functional/es3fDepthTests.cpp \
	modules/gles3/functional/es3fDitheringTests.cpp \
	modules/gles3/functional/es3fDrawTests.cpp \
	modules/gles3/functional/es3fFboApiTests.cpp \
	modules/gles3/functional/es3fFboColorbufferTests.cpp \
	modules/gles3/functional/es3fFboCompletenessTests.cpp \
	modules/gles3/functional/es3fFboDepthbufferTests.cpp \
	modules/gles3/functional/es3fFboInvalidateTests.cpp \
	modules/gles3/functional/es3fFboMultisampleTests.cpp \
	modules/gles3/functional/es3fFboRenderTest.cpp \
	modules/gles3/functional/es3fFboStateQueryTests.cpp \
	modules/gles3/functional/es3fFboStencilbufferTests.cpp \
	modules/gles3/functional/es3fFboTestCase.cpp \
	modules/gles3/functional/es3fFboTestUtil.cpp \
	modules/gles3/functional/es3fFloatStateQueryTests.cpp \
	modules/gles3/functional/es3fFlushFinishTests.cpp \
	modules/gles3/functional/es3fFragDepthTests.cpp \
	modules/gles3/functional/es3fFragmentOutputTests.cpp \
	modules/gles3/functional/es3fFragOpInteractionTests.cpp \
	modules/gles3/functional/es3fFramebufferBlitTests.cpp \
	modules/gles3/functional/es3fFunctionalTests.cpp \
	modules/gles3/functional/es3fImplementationLimitTests.cpp \
	modules/gles3/functional/es3fIndexedStateQueryTests.cpp \
	modules/gles3/functional/es3fInstancedRenderingTests.cpp \
	modules/gles3/functional/es3fInteger64StateQueryTests.cpp \
	modules/gles3/functional/es3fIntegerStateQueryTests.cpp \
	modules/gles3/functional/es3fInternalFormatQueryTests.cpp \
	modules/gles3/functional/es3fLifetimeTests.cpp \
	modules/gles3/functional/es3fMultisampleTests.cpp \
	modules/gles3/functional/es3fNegativeBufferApiTests.cpp \
	modules/gles3/functional/es3fNegativeFragmentApiTests.cpp \
	modules/gles3/functional/es3fNegativeShaderApiTests.cpp \
	modules/gles3/functional/es3fNegativeStateApiTests.cpp \
	modules/gles3/functional/es3fNegativeTextureApiTests.cpp \
	modules/gles3/functional/es3fNegativeVertexArrayApiTests.cpp \
	modules/gles3/functional/es3fOcclusionQueryTests.cpp \
	modules/gles3/functional/es3fPixelBufferObjectTests.cpp \
	modules/gles3/functional/es3fPolygonOffsetTests.cpp \
	modules/gles3/functional/es3fPrerequisiteTests.cpp \
	modules/gles3/functional/es3fPrimitiveRestartTests.cpp \
	modules/gles3/functional/es3fRandomFragmentOpTests.cpp \
	modules/gles3/functional/es3fRandomShaderTests.cpp \
	modules/gles3/functional/es3fRasterizationTests.cpp \
	modules/gles3/functional/es3fRasterizerDiscardTests.cpp \
	modules/gles3/functional/es3fRboStateQueryTests.cpp \
	modules/gles3/functional/es3fReadPixelsTests.cpp \
	modules/gles3/functional/es3fSamplerObjectTests.cpp \
	modules/gles3/functional/es3fSamplerStateQueryTests.cpp \
	modules/gles3/functional/es3fScissorTests.cpp \
	modules/gles3/functional/es3fShaderApiTests.cpp \
	modules/gles3/functional/es3fShaderBuiltinVarTests.cpp \
	modules/gles3/functional/es3fShaderCommonFunctionTests.cpp \
	modules/gles3/functional/es3fShaderConstExprTests.cpp \
	modules/gles3/functional/es3fShaderDerivateTests.cpp \
	modules/gles3/functional/es3fShaderDiscardTests.cpp \
	modules/gles3/functional/es3fShaderFragDataTests.cpp \
	modules/gles3/functional/es3fShaderIndexingTests.cpp \
	modules/gles3/functional/es3fShaderInvarianceTests.cpp \
	modules/gles3/functional/es3fShaderLoopTests.cpp \
	modules/gles3/functional/es3fShaderMatrixTests.cpp \
	modules/gles3/functional/es3fShaderOperatorTests.cpp \
	modules/gles3/functional/es3fShaderPackingFunctionTests.cpp \
	modules/gles3/functional/es3fShaderPrecisionTests.cpp \
	modules/gles3/functional/es3fShaderReturnTests.cpp \
	modules/gles3/functional/es3fShaderStateQueryTests.cpp \
	modules/gles3/functional/es3fShaderStructTests.cpp \
	modules/gles3/functional/es3fShaderSwitchTests.cpp \
	modules/gles3/functional/es3fShaderTextureFunctionTests.cpp \
	modules/gles3/functional/es3fStencilTests.cpp \
	modules/gles3/functional/es3fStringQueryTests.cpp \
	modules/gles3/functional/es3fSyncTests.cpp \
	modules/gles3/functional/es3fTextureFilteringTests.cpp \
	modules/gles3/functional/es3fTextureFormatTests.cpp \
	modules/gles3/functional/es3fTextureMipmapTests.cpp \
	modules/gles3/functional/es3fTextureShadowTests.cpp \
	modules/gles3/functional/es3fTextureSizeTests.cpp \
	modules/gles3/functional/es3fTextureSpecificationTests.cpp \
	modules/gles3/functional/es3fTextureStateQueryTests.cpp \
	modules/gles3/functional/es3fTextureSwizzleTests.cpp \
	modules/gles3/functional/es3fTextureUnitTests.cpp \
	modules/gles3/functional/es3fTextureWrapTests.cpp \
	modules/gles3/functional/es3fTransformFeedbackTests.cpp \
	modules/gles3/functional/es3fUniformApiTests.cpp \
	modules/gles3/functional/es3fUniformBlockTests.cpp \
	modules/gles3/functional/es3fVertexArrayObjectTests.cpp \
	modules/gles3/functional/es3fVertexArrayTest.cpp \
	modules/gles3/functional/es3fVertexTextureTests.cpp \
	modules/gles3/performance/es3pBlendTests.cpp \
	modules/gles3/performance/es3pBufferDataUploadTests.cpp \
	modules/gles3/performance/es3pDepthTests.cpp \
	modules/gles3/performance/es3pPerformanceTests.cpp \
	modules/gles3/performance/es3pRedundantStateChangeTests.cpp \
	modules/gles3/performance/es3pShaderCompilationCases.cpp \
	modules/gles3/performance/es3pShaderCompilerTests.cpp \
	modules/gles3/performance/es3pShaderControlStatementTests.cpp \
	modules/gles3/performance/es3pShaderOperatorTests.cpp \
	modules/gles3/performance/es3pShaderOptimizationTests.cpp \
	modules/gles3/performance/es3pStateChangeCallTests.cpp \
	modules/gles3/performance/es3pStateChangeTests.cpp \
	modules/gles3/performance/es3pTextureCases.cpp \
	modules/gles3/performance/es3pTextureCountTests.cpp \
	modules/gles3/performance/es3pTextureFilteringTests.cpp \
	modules/gles3/performance/es3pTextureFormatTests.cpp \
	modules/gles3/stress/es3sDrawTests.cpp \
	modules/gles3/stress/es3sLongRunningShaderTests.cpp \
	modules/gles3/stress/es3sLongRunningTests.cpp \
	modules/gles3/stress/es3sLongShaderTests.cpp \
	modules/gles3/stress/es3sMemoryTests.cpp \
	modules/gles3/stress/es3sOcclusionQueryTests.cpp \
	modules/gles3/stress/es3sSpecialFloatTests.cpp \
	modules/gles3/stress/es3sStressTests.cpp \
	modules/gles3/stress/es3sSyncTests.cpp \
	modules/gles3/stress/es3sVertexArrayTests.cpp \
	modules/gles3/tes3Context.cpp \
	modules/gles3/tes3InfoTests.cpp \
	modules/gles3/tes3TestCase.cpp \
	modules/gles3/tes3TestPackage.cpp \
	modules/gles3/tes3TestPackageEntry.cpp \
	modules/gles31/functional/es31fAdvancedBlendTests.cpp \
	modules/gles31/functional/es31fAndroidExtensionPackES31ATests.cpp \
	modules/gles31/functional/es31fAtomicCounterTests.cpp \
	modules/gles31/functional/es31fBasicComputeShaderTests.cpp \
	modules/gles31/functional/es31fBuiltinPrecisionTests.cpp \
	modules/gles31/functional/es31fComputeShaderBuiltinVarTests.cpp \
	modules/gles31/functional/es31fDebugTests.cpp \
	modules/gles31/functional/es31fDefaultVertexArrayObjectTests.cpp \
	modules/gles31/functional/es31fDrawTests.cpp \
	modules/gles31/functional/es31fFboColorbufferTests.cpp \
	modules/gles31/functional/es31fFboNoAttachmentTests.cpp \
	modules/gles31/functional/es31fFboTestCase.cpp \
	modules/gles31/functional/es31fFboTestUtil.cpp \
	modules/gles31/functional/es31fFunctionalTests.cpp \
	modules/gles31/functional/es31fGeometryShaderTests.cpp \
	modules/gles31/functional/es31fIndirectComputeDispatchTests.cpp \
	modules/gles31/functional/es31fIntegerStateQueryTests.cpp \
	modules/gles31/functional/es31fBooleanStateQueryTests.cpp \
	modules/gles31/functional/es31fIndexedStateQueryTests.cpp \
	modules/gles31/functional/es31fInternalFormatQueryTests.cpp \
	modules/gles31/functional/es31fTextureStateQueryTests.cpp \
	modules/gles31/functional/es31fFramebufferDefaultStateQueryTests.cpp \
	modules/gles31/functional/es31fProgramPipelineStateQueryTests.cpp \
	modules/gles31/functional/es31fProgramStateQueryTests.cpp \
	modules/gles31/functional/es31fInfoLogQueryShared.cpp \
	modules/gles31/functional/es31fLayoutBindingTests.cpp \
	modules/gles31/functional/es31fMultisampleShaderRenderCase.cpp \
	modules/gles31/functional/es31fMultisampleTests.cpp \
	modules/gles31/functional/es31fNegativeBufferApiTests.cpp \
	modules/gles31/functional/es31fNegativeFragmentApiTests.cpp \
	modules/gles31/functional/es31fNegativeShaderApiTests.cpp \
	modules/gles31/functional/es31fNegativeStateApiTests.cpp \
	modules/gles31/functional/es31fNegativeTestShared.cpp \
	modules/gles31/functional/es31fNegativeTextureApiTests.cpp \
	modules/gles31/functional/es31fNegativeVertexArrayApiTests.cpp \
	modules/gles31/functional/es31fOpaqueTypeIndexingTests.cpp \
	modules/gles31/functional/es31fPrimitiveBoundingBoxTests.cpp \
	modules/gles31/functional/es31fProgramInterfaceDefinition.cpp \
	modules/gles31/functional/es31fProgramInterfaceDefinitionUtil.cpp \
	modules/gles31/functional/es31fProgramInterfaceQueryTestCase.cpp \
	modules/gles31/functional/es31fProgramInterfaceQueryTests.cpp \
	modules/gles31/functional/es31fProgramUniformTests.cpp \
	modules/gles31/functional/es31fSamplerStateQueryTests.cpp \
	modules/gles31/functional/es31fSampleShadingTests.cpp \
	modules/gles31/functional/es31fSampleVariableTests.cpp \
	modules/gles31/functional/es31fSeparateShaderTests.cpp \
	modules/gles31/functional/es31fShaderAtomicOpTests.cpp \
	modules/gles31/functional/es31fShaderBuiltinConstantTests.cpp \
	modules/gles31/functional/es31fShaderCommonFunctionTests.cpp \
	modules/gles31/functional/es31fShaderHelperInvocationTests.cpp \
	modules/gles31/functional/es31fShaderImageLoadStoreTests.cpp \
	modules/gles31/functional/es31fShaderIntegerFunctionTests.cpp \
	modules/gles31/functional/es31fShaderMultisampleInterpolationStateQueryTests.cpp \
	modules/gles31/functional/es31fShaderMultisampleInterpolationTests.cpp \
	modules/gles31/functional/es31fShaderPackingFunctionTests.cpp \
	modules/gles31/functional/es31fShaderSharedVarTests.cpp \
	modules/gles31/functional/es31fShaderStateQueryTests.cpp \
	modules/gles31/functional/es31fShaderTextureSizeTests.cpp \
	modules/gles31/functional/es31fSSBOArrayLengthTests.cpp \
	modules/gles31/functional/es31fSSBOLayoutCase.cpp \
	modules/gles31/functional/es31fSSBOLayoutTests.cpp \
	modules/gles31/functional/es31fStencilTexturingTests.cpp \
	modules/gles31/functional/es31fSynchronizationTests.cpp \
	modules/gles31/functional/es31fTessellationGeometryInteractionTests.cpp \
	modules/gles31/functional/es31fTessellationTests.cpp \
	modules/gles31/functional/es31fTextureBufferTests.cpp \
	modules/gles31/functional/es31fTextureFilteringTests.cpp \
	modules/gles31/functional/es31fTextureFormatTests.cpp \
	modules/gles31/functional/es31fTextureGatherTests.cpp \
	modules/gles31/functional/es31fTextureLevelStateQueryTests.cpp \
	modules/gles31/functional/es31fTextureMultisampleTests.cpp \
	modules/gles31/functional/es31fTextureSpecificationTests.cpp \
	modules/gles31/functional/es31fTextureBorderClampTests.cpp \
	modules/gles31/functional/es31fUniformBlockTests.cpp \
	modules/gles31/functional/es31fUniformLocationTests.cpp \
	modules/gles31/functional/es31fVertexAttributeBindingStateQueryTests.cpp \
	modules/gles31/functional/es31fVertexAttributeBindingTests.cpp \
	modules/gles31/functional/es31fCopyImageTests.cpp \
	modules/gles31/functional/es31fDrawBuffersIndexedTests.cpp \
	modules/gles31/stress/es31sDrawTests.cpp \
	modules/gles31/stress/es31sStressTests.cpp \
	modules/gles31/stress/es31sTessellationGeometryInteractionTests.cpp \
	modules/gles31/stress/es31sVertexAttributeBindingTests.cpp \
	modules/gles31/tes31Context.cpp \
	modules/gles31/tes31InfoTests.cpp \
	modules/gles31/tes31TestCase.cpp \
	modules/gles31/tes31TestPackage.cpp \
	modules/gles31/tes31TestPackageEntry.cpp \
	modules/glshared/glsAttributeLocationTests.cpp \
	modules/glshared/glsBufferTestUtil.cpp \
	modules/glshared/glsBuiltinPrecisionTests.cpp \
	modules/glshared/glsCalibration.cpp \
	modules/glshared/glsDrawTest.cpp \
	modules/glshared/glsFboCompletenessTests.cpp \
	modules/glshared/glsFboUtil.cpp \
	modules/glshared/glsFragmentOpUtil.cpp \
	modules/glshared/glsFragOpInteractionCase.cpp \
	modules/glshared/glsInteractionTestUtil.cpp \
	modules/glshared/glsLifetimeTests.cpp \
	modules/glshared/glsLongStressCase.cpp \
	modules/glshared/glsLongStressTestUtil.cpp \
	modules/glshared/glsMemoryStressCase.cpp \
	modules/glshared/glsRandomShaderCase.cpp \
	modules/glshared/glsRandomShaderProgram.cpp \
	modules/glshared/glsRandomUniformBlockCase.cpp \
	modules/glshared/glsRasterizationTestUtil.cpp \
	modules/glshared/glsSamplerObjectTest.cpp \
	modules/glshared/glsScissorTests.cpp \
	modules/glshared/glsShaderConstExprTests.cpp \
	modules/glshared/glsShaderExecUtil.cpp \
	modules/glshared/glsShaderLibraryCase.cpp \
	modules/glshared/glsShaderLibrary.cpp \
	modules/glshared/glsShaderPerformanceCase.cpp \
	modules/glshared/glsShaderPerformanceMeasurer.cpp \
	modules/glshared/glsShaderRenderCase.cpp \
	modules/glshared/glsStateQueryUtil.cpp \
	modules/glshared/glsStateChangePerfTestCases.cpp \
	modules/glshared/glsTextureBufferCase.cpp \
	modules/glshared/glsTextureStateQueryTests.cpp \
	modules/glshared/glsTextureTestUtil.cpp \
	modules/glshared/glsUniformBlockCase.cpp \
	modules/glshared/glsVertexArrayTests.cpp \
	modules/internal/ditAstcTests.cpp \
	modules/internal/ditBuildInfoTests.cpp \
	modules/internal/ditSRGB8ConversionTest.cpp \
	modules/internal/ditDelibsTests.cpp \
	modules/internal/ditFrameworkTests.cpp \
	modules/internal/ditImageCompareTests.cpp \
	modules/internal/ditImageIOTests.cpp \
	modules/internal/ditTestCase.cpp \
	modules/internal/ditTestLogTests.cpp \
	modules/internal/ditTestPackage.cpp \
	modules/internal/ditSeedBuilderTests.cpp \
	modules/internal/ditTestPackageEntry.cpp \
	modules/internal/ditTextureFormatTests.cpp

LOCAL_C_INCLUDES := \
	frameworks/native/opengl/include \
	external/libpng \
	external/zlib \
	$(delibs_dir)/debase \
	$(delibs_dir)/decpp \
	$(delibs_dir)/depool \
	$(delibs_dir)/dethread \
	$(delibs_dir)/deutil \
	$(delibs_dir)/destream \
	$(deqp_dir)/framework/common \
	$(deqp_dir)/framework/qphelper \
	$(deqp_dir)/framework/platform/android \
	$(deqp_dir)/framework/egl \
	$(deqp_dir)/framework/egl/wrapper \
	$(deqp_dir)/framework/opengl \
	$(deqp_dir)/framework/opengl/wrapper \
	$(deqp_dir)/framework/referencerenderer \
	$(deqp_dir)/framework/opengl/simplereference \
	$(deqp_dir)/framework/randomshaders \
	$(deqp_dir)/modules/egl \
	$(deqp_dir)/modules/gles2 \
	$(deqp_dir)/modules/gles2/functional \
	$(deqp_dir)/modules/gles2/accuracy \
	$(deqp_dir)/modules/gles2/performance \
	$(deqp_dir)/modules/gles2/stress \
	$(deqp_dir)/modules/gles3 \
	$(deqp_dir)/modules/gles3/functional \
	$(deqp_dir)/modules/gles3/accuracy \
	$(deqp_dir)/modules/gles3/performance \
	$(deqp_dir)/modules/gles3/stress \
	$(deqp_dir)/modules/gles31 \
	$(deqp_dir)/modules/gles31/functional \
	$(deqp_dir)/modules/gles31/stress \
	$(deqp_dir)/modules/glshared \
	$(deqp_dir)/modules/glusecases \
	$(deqp_dir)/executor \
	$(deqp_dir)/execserver

deqp_compile_flags := \
	-DDEQP_SUPPORT_EGL=1 \
	-DDEQP_SUPPORT_GLES1=1 \
	-DDEQP_SUPPORT_GLES2=1 \
	-DDEQP_SUPPORT_GLES3=1 \
	-DDE_ANDROID_API=9 \
	-D_XOPEN_SOURCE=600 \
	-DDEQP_TARGET_NAME=\"android\" \
	-DDEQP_GLES3_RUNTIME_LOAD=1 \
	-DDEQP_GLES2_RUNTIME_LOAD=1 \
	-DQP_SUPPORT_PNG=1 \
	-Wconversion \
	-Wno-sign-conversion

LOCAL_SHARED_LIBRARIES := \
		libEGL \
		libGLESv2 \
		libandroid \
		liblog \
		libm \
		libc \
		libz \
		libdl

LOCAL_STATIC_LIBRARIES := \
		libpng_ndk \

LOCAL_CFLAGS += \
	$(deqp_compile_flags) \
	-Wno-error=date-time

LOCAL_SDK_VERSION := 9
LOCAL_CPPFLAGS += -Wno-non-virtual-dtor -fwrapv
LOCAL_NDK_STL_VARIANT := gnustl_static
LOCAL_RTTI_FLAG := -frtti -fexceptions
LOCAL_MULTILIB := both

include $(BUILD_SHARED_LIBRARY)


# Build the test APKs using their own makefiles
# include $(call all-makefiles-under,$(LOCAL_PATH)/android)

include $(LOCAL_PATH)/android/package/Android.mk $(LOCAL_PATH)/android/cts/Android.mk
