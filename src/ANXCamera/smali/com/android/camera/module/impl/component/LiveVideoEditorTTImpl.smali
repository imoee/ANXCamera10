.class public Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;
.super Ljava/lang/Object;
.source "LiveVideoEditorTTImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditor:Lcom/ss/android/vesdk/VEEditor;

.field private mEncodeHeight:I

.field private mEncodeWidth:I

.field private mNeedPrepare:Z

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mVideoSavePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mNeedPrepare:Z

    .line 30
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraAppImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;
    .locals 1

    .line 34
    new-instance v0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method


# virtual methods
.method public combineVideoAudio(Ljava/lang/String;Lcom/ss/android/vesdk/VECommonCallback;Lcom/ss/android/vesdk/VECommonCallback;)V
    .locals 2

    .line 86
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mNeedPrepare:Z

    .line 88
    new-instance p3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    invoke-direct {p3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>()V

    sget-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;->COMPILE_TYPE_MP4:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    .line 89
    invoke-virtual {p3, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setCompileType(Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p3

    iget v0, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEncodeHeight:I

    iget v1, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEncodeWidth:I

    .line 90
    invoke-virtual {p3, v0, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p3

    .line 91
    invoke-virtual {p3, p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setHwEnc(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    .line 92
    const/16 p3, 0x1e

    invoke-virtual {p2, p3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setGopSize(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    sget-object p3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_ABR:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    .line 93
    const/high16 v0, 0x400000

    invoke-virtual {p2, p3, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoBitrate(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    .line 94
    const/16 p3, 0x19

    invoke-virtual {p2, p3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setFps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    .line 95
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p2

    .line 96
    iget-object p3, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Lcom/ss/android/vesdk/VEEditor;->compile(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEVideoEncodeSettings;)V

    .line 98
    return-void
.end method

.method public init(Landroid/view/TextureView;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VECommonCallback;Lcom/ss/android/vesdk/VECommonCallback;)Z
    .locals 5

    .line 48
    sget-object v0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->TAG:Ljava/lang/String;

    const-string v1, "VEEditor init"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Lcom/ss/android/vesdk/VEEditor;

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->ROOT_DIR:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/ss/android/vesdk/VEEditor;-><init>(Ljava/lang/String;Landroid/view/TextureView;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    .line 50
    nop

    .line 51
    const-string p1, ""

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 52
    nop

    .line 53
    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    new-array v2, v0, [Ljava/lang/String;

    aput-object p2, v2, v1

    .line 54
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    new-array p1, v0, [Ljava/lang/String;

    aput-object p3, p1, v1

    goto :goto_1

    .line 56
    :cond_1
    move-object p1, p2

    :goto_1
    iget-object v3, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    sget-object v4, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_ORIGINAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    invoke-virtual {v3, v2, p2, p1, v4}, Lcom/ss/android/vesdk/VEEditor;->init([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I

    move-result p1

    .line 57
    iget-object v2, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v2, p4}, Lcom/ss/android/vesdk/VEEditor;->setOnInfoListener(Lcom/ss/android/vesdk/VECommonCallback;)V

    .line 58
    iget-object p4, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p4, p5}, Lcom/ss/android/vesdk/VEEditor;->setOnErrorListener(Lcom/ss/android/vesdk/VECommonCallback;)V

    .line 59
    if-eqz p1, :cond_3

    .line 60
    sget-object p3, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Video editor init failed, ret = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    if-eqz p1, :cond_2

    .line 63
    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEEditor;->destroy()V

    .line 64
    iput-object p2, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    .line 66
    :cond_2
    return v1

    .line 69
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p1, v1}, Lcom/ss/android/vesdk/VEEditor;->setLoopPlay(Z)V

    .line 70
    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    sget-object p2, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->SCALE_MODE_CENTER_CROP:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEEditor;->setScaleMode(Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;)I

    .line 71
    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEEditor;->prepare()I

    .line 72
    iput-boolean v1, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mNeedPrepare:Z

    .line 73
    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    const/16 p2, 0x3a98

    invoke-virtual {p1, p3, v1, p2, v0}, Lcom/ss/android/vesdk/VEEditor;->addAudioTrack(Ljava/lang/String;IIZ)I

    .line 74
    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    sget-object p2, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {p1, v1, p2}, Lcom/ss/android/vesdk/VEEditor;->seek(ILcom/ss/android/vesdk/VEEditor$SEEK_MODE;)I

    .line 76
    return v0
.end method

.method public onDestory()V
    .locals 2

    .line 139
    sget-object v0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->TAG:Ljava/lang/String;

    const-string v1, "VEEditor onDestory"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->destroy()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    .line 144
    :cond_0
    return-void
.end method

.method public pausePlay()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    if-nez v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->pause()I

    .line 126
    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 38
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 39
    return-void
.end method

.method public resumePlay()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    if-nez v0, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v1, 0x0

    sget-object v2, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEEditor;->seek(ILcom/ss/android/vesdk/VEEditor$SEEK_MODE;)I

    .line 134
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->play()I

    .line 135
    return-void
.end method

.method public setEncodeSize(II)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEncodeWidth:I

    .line 103
    iput p2, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEncodeHeight:I

    .line 104
    return-void
.end method

.method public startPlay()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    if-nez v0, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mNeedPrepare:Z

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->prepare()I

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mNeedPrepare:Z

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEEditor;->setLoopPlay(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveVideoEditorTTImpl;->mEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->play()I

    .line 117
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 43
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 44
    return-void
.end method
