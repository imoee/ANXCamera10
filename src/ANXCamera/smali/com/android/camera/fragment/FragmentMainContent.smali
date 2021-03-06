.class public Lcom/android/camera/fragment/FragmentMainContent;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentMainContent.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$SnapShotIndicator;


# static fields
.field public static final FRAGMENT_INFO:I = 0xf3

.field public static final FRONT_CAMERA_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FragmentMainContent"


# instance fields
.field private lastConfirmTime:J

.field private lastFaceResult:I

.field private lastFaceSuccess:Z

.field private mActiveIndicator:I

.field private mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

.field private mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

.field private mBottomCover:Landroid/view/View;

.field private mCaptureDelayNumber:Landroid/widget/TextView;

.field private mCenterHintIcon:Landroid/widget/ImageView;

.field private mCenterHintText:Landroid/widget/TextView;

.field private mCoverParent:Landroid/view/ViewGroup;

.field private mDisplayRectTopMargin:I

.field private mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFocusView:Lcom/android/camera/ui/FocusView;

.field private mHandler:Landroid/os/Handler;

.field private mIsIntentAction:Z

.field private mLastCameraId:I

.field private mLightingView:Lcom/android/camera/ui/LightingView;

.field private mMultiSnapNum:Landroid/widget/TextView;

.field private mObjectView:Lcom/android/camera/ui/ObjectView;

.field private mPreviewCenterHint:Landroid/view/ViewGroup;

.field private mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

.field private mPreviewPage:Landroid/view/ViewGroup;

.field private mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

.field private mSnapStyle:Landroid/text/style/TextAppearanceSpan;

.field private mStringBuilder:Landroid/text/SpannableStringBuilder;

.field private mTopCover:Landroid/view/View;

.field private mZoomInAnimator:Landroid/animation/AnimatorSet;

.field private mZoomOutAnimator:Landroid/animation/AnimatorSet;

.field private mergeRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    .line 760
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mActiveIndicator:I

    .line 820
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mergeRectF:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/FragmentMainContent;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastFaceResult:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/FragmentMainContent;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastFaceSuccess:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/FragmentMainContent;)Lcom/android/camera/ui/LightingView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/FragmentMainContent;)Landroid/view/ViewGroup;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewCenterHint:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private adjustViewHeight()V
    .locals 7

    .line 162
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPanel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 169
    nop

    .line 170
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 171
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    .line 172
    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 173
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewCenterHint:Landroid/view/ViewGroup;

    .line 174
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 176
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v4

    .line 177
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ne v5, v6, :cond_1

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectTopMargin:I

    if-eq v5, v6, :cond_2

    .line 178
    :cond_1
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iput v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectTopMargin:I

    .line 180
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 181
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 182
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-virtual {v5, v2}, Lcom/android/camera/ui/V6PreviewPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x3

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 185
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewCenterHint:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectTopMargin:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->setDisplaySize(II)V

    .line 192
    :cond_2
    return-void

    .line 164
    :cond_3
    :goto_0
    return-void
.end method

.method private consumeResult(I)V
    .locals 4

    .line 893
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastConfirmTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 894
    return-void

    .line 897
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastConfirmTime:J

    .line 898
    const-string v0, "faceResult:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastFaceResult:I

    if-ne v0, p1, :cond_1

    .line 901
    return-void

    .line 904
    :cond_1
    iput p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastFaceResult:I

    .line 907
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    new-instance v1, Lcom/android/camera/fragment/FragmentMainContent$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentMainContent$1;-><init>(Lcom/android/camera/fragment/FragmentMainContent;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/LightingView;->post(Ljava/lang/Runnable;)Z

    .line 921
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 923
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastFaceSuccess:Z

    if-ne v0, p1, :cond_3

    .line 924
    return-void

    .line 927
    :cond_3
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastFaceSuccess:Z

    .line 930
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentMainContent$2;-><init>(Lcom/android/camera/fragment/FragmentMainContent;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/LightingView;->post(Ljava/lang/Runnable;)Z

    .line 941
    return-void
.end method

.method private getMergeRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4

    .line 946
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 947
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 949
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 950
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 952
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mergeRectF:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, v2, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 954
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mergeRectF:Landroid/graphics/RectF;

    return-object p1
.end method

.method private initSnapNumAnimator()V
    .locals 2

    .line 356
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    .line 357
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lmiui/view/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060002

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    .line 360
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lmiui/view/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 362
    return-void
.end method

.method private isRectIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2

    .line 965
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget p2, p2, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private showIndicator(Lcom/android/camera/ui/FocusIndicator;I)V
    .locals 0

    .line 792
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 794
    :pswitch_0
    invoke-interface {p1}, Lcom/android/camera/ui/FocusIndicator;->showFail()V

    .line 795
    goto :goto_0

    .line 800
    :pswitch_1
    invoke-interface {p1}, Lcom/android/camera/ui/FocusIndicator;->showSuccess()V

    .line 801
    goto :goto_0

    .line 797
    :pswitch_2
    invoke-interface {p1}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    .line 798
    nop

    .line 805
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clearFocusView(I)V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView;->clear(I)V

    .line 591
    return-void
.end method

.method public clearIndicator(I)V
    .locals 1

    .line 719
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 729
    :pswitch_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {p1}, Lcom/android/camera/ui/ObjectView;->clear()V

    goto :goto_0

    .line 727
    :pswitch_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not allowed call in this method"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 721
    :pswitch_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 722
    nop

    .line 732
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public destroyEffectCropView()V
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->onDestroy()V

    .line 456
    return-void
.end method

.method public feedData(Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V
    .locals 1

    .line 1150
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0, p1}, Lcom/android/camera2/autozoom/AutoZoomView;->feedData(Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V

    .line 1151
    return-void
.end method

.method public getActiveIndicator()I
    .locals 1

    .line 770
    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mActiveIndicator:I

    return v0
.end method

.method public getFaceWaterMarkInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;"
        }
    .end annotation

    .line 1089
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->getFaceWaterMarkInfos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFaces()[Lcom/android/camera2/CameraHardwareFace;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->getFaces()[Lcom/android/camera2/CameraHardwareFace;

    move-result-object v0

    return-object v0
.end method

.method public getFocusRect(I)Landroid/graphics/RectF;
    .locals 3

    .line 809
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 815
    const-string v0, "FragmentMainContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": unexpected type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    return-object p1

    .line 813
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {p1}, Lcom/android/camera/ui/ObjectView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object p1

    return-object p1

    .line 811
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FaceView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getFocusRectInPreviewFrame()Landroid/graphics/RectF;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentInto()I
    .locals 1

    .line 201
    const/16 v0, 0xf3

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    .line 196
    const v0, 0x7f040024

    return v0
.end method

.method public hideDelayNumber()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    :cond_0
    return-void
.end method

.method public hideReviewViews()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 326
    return-void
.end method

.method public initEffectCropView()V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->onCreate()V

    .line 451
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 4

    .line 120
    const v0, 0x7f0d0079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCoverParent:Landroid/view/ViewGroup;

    .line 121
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCoverParent:Landroid/view/ViewGroup;

    const v1, 0x7f0d007c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCoverParent:Landroid/view/ViewGroup;

    const v1, 0x7f0d007d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCaptureDelayNumber:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCoverParent:Landroid/view/ViewGroup;

    const v1, 0x7f0d007a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCoverParent:Landroid/view/ViewGroup;

    const v1, 0x7f0d007b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Landroid/view/View;

    .line 127
    const v0, 0x7f0d0078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPage:Landroid/view/ViewGroup;

    .line 128
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPage:Landroid/view/ViewGroup;

    const v0, 0x7f0d00e4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/V6PreviewPanel;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    .line 129
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v0, 0x7f0d00e6

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/V6PreviewFrame;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    .line 131
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v0, 0x7f0d00f1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewCenterHint:Landroid/view/ViewGroup;

    .line 132
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewCenterHint:Landroid/view/ViewGroup;

    const v0, 0x7f0d00f2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCenterHintIcon:Landroid/widget/ImageView;

    .line 133
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewCenterHint:Landroid/view/ViewGroup;

    const v0, 0x7f0d00f3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCenterHintText:Landroid/widget/TextView;

    .line 135
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v0, 0x7f0d00f0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/V6EffectCropView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    .line 136
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v0, 0x7f0d00e8

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/FaceView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 137
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v0, 0x7f0d00ea

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/FocusView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    .line 138
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v0, 0x7f0d00eb

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/autozoom/AutoZoomView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    .line 140
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v0, 0x7f0d00ec

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/LightingView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    .line 141
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v0, 0x7f0d00e9

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/ObjectView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    .line 142
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v0, 0x7f0d00ed

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/AfRegionsView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    .line 145
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDegree:I

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/LightingView;->setRotation(I)V

    .line 147
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight()V

    .line 149
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCoverParent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 150
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    float-to-int v0, v0

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 151
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 152
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCoverParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Landroid/view/View;

    .line 153
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 156
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsIntentAction:Z

    .line 158
    iget p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCurrentMode:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->provideAnimateElement(ILjava/util/List;I)V

    .line 159
    return-void
.end method

.method public initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView;->initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    .line 573
    return-void
.end method

.method public initializeObjectTrack(Landroid/graphics/RectF;Z)Z
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 601
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 602
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ObjectView;->initializeTrackView(Landroid/graphics/RectF;Z)Z

    move-result p1

    return p1
.end method

.method public initializeObjectView(Landroid/graphics/RectF;Z)Z
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ObjectView;->initializeTrackView(Landroid/graphics/RectF;Z)Z

    move-result p1

    return p1
.end method

.method public isAdjustingObjectView()Z
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->isAdjusting()Z

    move-result v0

    return v0
.end method

.method public isAutoZoomActive()Z
    .locals 1

    .line 1172
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewActive()Z

    move-result v0

    return v0
.end method

.method public isAutoZoomEnabled()Z
    .locals 1

    .line 1177
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewEnabled()Z

    move-result v0

    return v0
.end method

.method public isAutoZoomViewEnabled()Z
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewEnabled()Z

    move-result v0

    return v0
.end method

.method public isEffectViewMoved()Z
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->isMoved()Z

    move-result v0

    return v0
.end method

.method public isEffectViewVisible()Z
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isEvAdjusted(Z)Z
    .locals 0

    .line 553
    if-eqz p1, :cond_0

    .line 554
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FocusView;->isEvAdjustedTime()Z

    move-result p1

    return p1

    .line 556
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FocusView;->isEvAdjusted()Z

    move-result p1

    return p1
.end method

.method public isFaceExists(I)Z
    .locals 1

    .line 652
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 658
    const/4 p1, 0x0

    return p1

    .line 656
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {p1}, Lcom/android/camera/ui/ObjectView;->faceExists()Z

    move-result p1

    return p1

    .line 654
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result p1

    return p1
.end method

.method public isFaceStable(I)Z
    .locals 1

    .line 664
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 670
    const/4 p1, 0x0

    return p1

    .line 668
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {p1}, Lcom/android/camera/ui/ObjectView;->isFaceStable()Z

    move-result p1

    return p1

    .line 666
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FaceView;->isFaceStable()Z

    move-result p1

    return p1
.end method

.method public isFocusViewVisible()Z
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isIndicatorVisible(I)Z
    .locals 2

    .line 676
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 684
    return v1

    .line 682
    :pswitch_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {p1}, Lcom/android/camera/ui/ObjectView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 680
    :pswitch_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FocusView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    .line 678
    :pswitch_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FaceView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isNeedExposure(I)Z
    .locals 1

    .line 690
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 696
    const/4 p1, 0x0

    return p1

    .line 694
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {p1}, Lcom/android/camera/ui/ObjectView;->isNeedExposure()Z

    move-result p1

    return p1

    .line 692
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FaceView;->isNeedExposure()Z

    move-result p1

    return p1
.end method

.method public isObjectTrackFailed()Z
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->isTrackFailed()Z

    move-result v0

    return v0
.end method

.method public lightingCancel()V
    .locals 2

    .line 985
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->triggerAnimateExit()V

    .line 986
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastConfirmTime:J

    .line 987
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setLightingOn(Z)V

    .line 988
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AfRegionsView;->setLightingOn(Z)V

    .line 989
    return-void
.end method

.method public lightingDetectFace([Lcom/android/camera2/CameraHardwareFace;)V
    .locals 6

    .line 828
    const/4 v0, 0x5

    if-eqz p1, :cond_6

    array-length v1, p1

    if-eqz v1, :cond_6

    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto/16 :goto_2

    .line 833
    :cond_0
    iget-wide v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastConfirmTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 834
    return-void

    .line 837
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    iget-object p1, p1, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {v2}, Lcom/android/camera/ui/LightingView;->getFaceViewRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/camera/ui/FaceView;->transToViewRect(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 839
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {p1}, Lcom/android/camera/ui/LightingView;->getFaceViewRectF()Landroid/graphics/RectF;

    move-result-object p1

    .line 841
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {v1}, Lcom/android/camera/ui/LightingView;->getFocusRectF()Landroid/graphics/RectF;

    move-result-object v1

    .line 847
    invoke-direct {p0, p1, v1}, Lcom/android/camera/fragment/FragmentMainContent;->isRectIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 848
    invoke-direct {p0, p1, v1}, Lcom/android/camera/fragment/FragmentMainContent;->getMergeRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 850
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float/2addr v2, p1

    .line 851
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mergeRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mergeRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr p1, v3

    .line 852
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v3, v1

    .line 855
    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v3

    .line 856
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    .line 858
    mul-float/2addr v4, v2

    .line 863
    cmpg-float v5, p1, v4

    if-gez v5, :cond_2

    .line 865
    goto :goto_0

    .line 866
    :cond_2
    cmpg-float v0, p1, v1

    if-gez v0, :cond_3

    cmpl-float v0, p1, v4

    if-lez v0, :cond_3

    .line 867
    const/4 v0, 0x4

    goto :goto_0

    .line 869
    :cond_3
    cmpg-float p1, p1, v3

    if-gez p1, :cond_4

    cmpg-float p1, v2, v3

    if-gez p1, :cond_4

    .line 870
    const/4 v0, 0x6

    goto :goto_0

    .line 873
    :cond_4
    const/4 v0, 0x3

    .line 877
    :goto_0
    goto :goto_1

    .line 878
    :cond_5
    nop

    .line 881
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->consumeResult(I)V

    .line 887
    return-void

    .line 829
    :cond_6
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->consumeResult(I)V

    .line 830
    return-void
.end method

.method public lightingFocused()V
    .locals 1

    .line 980
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->triggerAnimateSuccess()V

    .line 981
    return-void
.end method

.method public lightingStart()V
    .locals 2

    .line 970
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->triggerAnimateStart()V

    .line 971
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastFaceResult:I

    .line 972
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastFaceSuccess:Z

    .line 973
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->lastConfirmTime:J

    .line 974
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setLightingOn(Z)V

    .line 975
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AfRegionsView;->setLightingOn(Z)V

    .line 976
    return-void
.end method

.method public needViewClear()Z
    .locals 1

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 0

    .line 1046
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 1050
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6PreviewFrame;->updateReferenceLineAccordSquare()V

    .line 1051
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6PreviewFrame;->updatePreviewGrid()V

    .line 1054
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FocusView;->reInit()V

    .line 1056
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 1057
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 2

    .line 1008
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 1010
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p2

    .line 1011
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsIntentAction:Z

    if-eq p2, v0, :cond_0

    .line 1012
    iput-boolean p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mIsIntentAction:Z

    .line 1013
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->hideReviewViews()V

    .line 1015
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p2

    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    if-eq p2, v0, :cond_3

    .line 1016
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    .line 1017
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1018
    iget p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLastCameraId:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 1019
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera/Util;->isScreenSlideOff(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1020
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    const v0, 0x7f0900f7

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/camera/ui/V6PreviewFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1021
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/V6PreviewFrame;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1023
    :cond_1
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    const v0, 0x7f0900f6

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/camera/ui/V6PreviewFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1024
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/V6PreviewFrame;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1027
    :cond_2
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    const v0, 0x7f0900f5

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/camera/ui/V6PreviewFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1028
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/V6PreviewFrame;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1033
    :cond_3
    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1039
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight()V

    goto :goto_1

    .line 1036
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight()V

    .line 1037
    nop

    .line 1042
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAutoZoomStarted()V
    .locals 2

    .line 1134
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->setViewEnable(Z)V

    .line 1135
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->setViewActive(Z)V

    .line 1136
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->clear(I)V

    .line 1137
    return-void
.end method

.method public onAutoZoomStopped()V
    .locals 2

    .line 1142
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->setViewEnable(Z)V

    .line 1143
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->setViewActive(Z)V

    .line 1144
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->clear(I)V

    .line 1145
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 0

    .line 1061
    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 109
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1001
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onDestroy()V

    .line 1002
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->destroyEffectCropView()V

    .line 1003
    return-void
.end method

.method public onEffectViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6EffectCropView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 995
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onPause()V

    .line 996
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 997
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 114
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    .line 115
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->clear()V

    .line 116
    return-void
.end method

.method public onStopObjectTrack()V
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 624
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 625
    return-void
.end method

.method public onTrackingStarted(Landroid/graphics/RectF;)V
    .locals 2

    .line 1157
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$AutoZoomModuleProtocol;

    .line 1158
    if-eqz v0, :cond_0

    .line 1159
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$AutoZoomModuleProtocol;->startTracking(Landroid/graphics/RectF;)V

    .line 1161
    :cond_0
    return-void
.end method

.method public onTrackingStopped(I)V
    .locals 1

    .line 1166
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera2/autozoom/AutoZoomView;->setViewActive(Z)V

    .line 1167
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p1, v0}, Lcom/android/camera2/autozoom/AutoZoomView;->clear(I)V

    .line 1168
    return-void
.end method

.method public onViewTouchEvent(ILandroid/view/MotionEvent;)Z
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 437
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/FocusView;->onViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 439
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/V6EffectCropView;->onViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0}, Lcom/android/camera2/autozoom/AutoZoomView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 441
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {p1, p2}, Lcom/android/camera2/autozoom/AutoZoomView;->onViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 443
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public performHapticFeedback(I)V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6PreviewFrame;->performHapticFeedback(I)Z

    .line 422
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 212
    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCurrentMode:I

    .line 213
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    .line 215
    nop

    .line 216
    const/4 p3, 0x1

    const/16 v1, 0xa5

    if-eq p1, v1, :cond_0

    .line 221
    const/4 v1, -0x1

    goto :goto_0

    .line 218
    :cond_0
    nop

    .line 219
    nop

    .line 224
    move v1, p3

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p3}, Lcom/android/camera/fragment/FragmentMainContent;->setSnapNumVisible(ZZ)V

    .line 225
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->hideDelayNumber()V

    .line 226
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6PreviewFrame;->hidePreviewGrid()V

    .line 227
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 228
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FaceView;->clearFaceFlags()V

    .line 229
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 230
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {v3}, Lcom/android/camera/ui/LightingView;->clear()V

    .line 231
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {v3}, Lcom/android/camera/ui/AfRegionsView;->clear()V

    .line 233
    nop

    .line 234
    const/16 v3, 0xa2

    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 238
    :cond_1
    :pswitch_0
    if-eq p1, v3, :cond_2

    packed-switch p1, :pswitch_data_1

    .line 247
    :goto_1
    move v2, p3

    goto :goto_2

    .line 242
    :cond_2
    :pswitch_1
    nop

    .line 247
    :goto_2
    if-eqz v2, :cond_3

    .line 248
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FocusView;->releaseListener()V

    .line 256
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 257
    return-void

    .line 260
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 262
    const/16 p1, 0x50

    const/16 v0, 0x30

    if-ne v1, p3, :cond_6

    .line 263
    if-nez p2, :cond_5

    .line 264
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-static {p2, v0}, Lcom/android/camera/animation/type/SlideInOnSubscribe;->directSetResult(Landroid/view/View;I)V

    .line 265
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Landroid/view/View;

    invoke-static {p2, p1}, Lcom/android/camera/animation/type/SlideInOnSubscribe;->directSetResult(Landroid/view/View;I)V

    goto :goto_3

    .line 267
    :cond_5
    new-instance p3, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-direct {p3, v1, v0}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    .line 268
    invoke-static {p3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p3

    .line 267
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance p3, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Landroid/view/View;

    invoke-direct {p3, v0, p1}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    .line 270
    invoke-static {p3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    .line 269
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 273
    :cond_6
    if-nez p2, :cond_7

    .line 274
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-static {p2, v0}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->directSetResult(Landroid/view/View;I)V

    .line 275
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Landroid/view/View;

    invoke-static {p2, p1}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->directSetResult(Landroid/view/View;I)V

    goto :goto_3

    .line 277
    :cond_7
    new-instance p3, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mTopCover:Landroid/view/View;

    invoke-direct {p3, v1, v0}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    .line 278
    const/16 v0, 0xc8

    invoke-virtual {p3, v0}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p3

    invoke-static {p3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p3

    .line 277
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance p3, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mBottomCover:Landroid/view/View;

    invoke-direct {p3, v1, p1}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    .line 280
    invoke-virtual {p3, v0}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    .line 279
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa8
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1067
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 1069
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    rsub-int v1, p2, 0x168

    rem-int/lit16 v1, v1, 0x168

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/FaceView;->setOrientation(IZ)V

    .line 1072
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {v0, p2, v2}, Lcom/android/camera/ui/AfRegionsView;->setOrientation(IZ)V

    .line 1075
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {v0, p2, v2}, Lcom/android/camera/ui/LightingView;->setOrientation(IZ)V

    .line 1077
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p2, v2}, Lcom/android/camera/ui/FocusView;->setOrientation(IZ)V

    .line 1078
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1083
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1085
    return-void
.end method

.method public reShowFaceRect()V
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->reShowFaceRect()V

    .line 596
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 287
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 288
    const/16 v0, 0xa6

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 289
    const/16 v0, 0xd6

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 292
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/FragmentMainContent;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 294
    invoke-static {}, Lcom/mi/config/b;->isSupportedOpticalZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    const/16 v0, 0xb8

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 297
    :cond_0
    return-void
.end method

.method public removeTiltShiftMask()V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->removeTiltShiftMask()V

    .line 461
    return-void
.end method

.method public setActiveIndicator(I)V
    .locals 0

    .line 765
    iput p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mActiveIndicator:I

    .line 766
    return-void
.end method

.method public setAfRegionView([Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;F)V
    .locals 1

    .line 1094
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ui/AfRegionsView;->setAfRegionRect([Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;F)V

    .line 1095
    return-void
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setCameraDisplayOrientation(I)V

    .line 509
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAfRegionsView:Lcom/android/camera/ui/AfRegionsView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/AfRegionsView;->setCameraDisplayOrientation(I)V

    .line 511
    :cond_0
    return-void
.end method

.method public setCenterHint(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .line 1099
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewCenterHint:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1100
    if-nez p1, :cond_4

    .line 1101
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCenterHintText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1105
    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCenterHintText:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1103
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCenterHintText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1107
    :goto_1
    if-eqz p3, :cond_3

    const-string p2, ""

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 1110
    :cond_2
    invoke-static {p0}, Lcom/bumptech/glide/c;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/i;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCenterHintIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/h;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 1111
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCenterHintIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1108
    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCenterHintIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1113
    :goto_3
    if-lez p4, :cond_4

    .line 1114
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/camera/fragment/FragmentMainContent$3;

    invoke-direct {p3, p0}, Lcom/android/camera/fragment/FragmentMainContent$3;-><init>(Lcom/android/camera/fragment/FragmentMainContent;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewCenterHint:Landroid/view/ViewGroup;

    .line 1119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, p4

    add-long/2addr v1, v3

    .line 1114
    invoke-virtual {p2, p3, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 1122
    :cond_4
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewCenterHint:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1123
    return-void
.end method

.method public setDisplaySize(II)V
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ObjectView;->setDisplaySize(II)V

    .line 630
    return-void
.end method

.method public setEffectViewVisible(Z)V
    .locals 0

    .line 465
    if-eqz p1, :cond_0

    .line 466
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6EffectCropView;->show()V

    goto :goto_0

    .line 468
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6EffectCropView;->hide()V

    .line 470
    :goto_0
    return-void
.end method

.method public setEvAdjustable(Z)V
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView;->setEvAdjustable(Z)V

    .line 568
    return-void
.end method

.method public setFaces(I[Lcom/android/camera2/CameraHardwareFace;Landroid/graphics/Rect;F)Z
    .locals 1

    .line 703
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 p3, 0x3

    const/4 p4, 0x0

    if-eq p1, p3, :cond_0

    .line 712
    return p4

    .line 707
    :cond_0
    if-eqz p2, :cond_1

    array-length p1, p2

    if-lez p1, :cond_1

    .line 708
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    aget-object p2, p2, p4

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/ObjectView;->setObject(Lcom/android/camera2/CameraHardwareFace;)V

    .line 710
    :cond_1
    return v0

    .line 705
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera2/CameraHardwareFace;Landroid/graphics/Rect;F)Z

    move-result p1

    return p1
.end method

.method public setFocusViewPosition(III)V
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ui/FocusView;->setPosition(III)V

    .line 585
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FaceView;->forceHideRect()V

    .line 586
    return-void
.end method

.method public setFocusViewType(Z)V
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 578
    return-void
.end method

.method public setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ObjectView;->setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V

    .line 643
    return-void
.end method

.method public setPreviewAspectRatio(F)V
    .locals 0

    .line 416
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->adjustViewHeight()V

    .line 417
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mAutoZoomOverlay:Lcom/android/camera2/autozoom/AutoZoomView;

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->setPreviewSize(Landroid/util/Size;)V

    .line 638
    :cond_0
    return-void
.end method

.method public setShowGenderAndAge(Z)V
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setShowGenderAndAge(Z)V

    .line 516
    return-void
.end method

.method public setShowMagicMirror(Z)V
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setShowMagicMirror(Z)V

    .line 521
    return-void
.end method

.method public setSkipDrawFace(Z)V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setSkipDraw(Z)V

    .line 526
    return-void
.end method

.method public setSnapNumValue(I)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 386
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->setSnapNumVisible(ZZ)V

    .line 387
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mSnapStyle:Landroid/text/style/TextAppearanceSpan;

    if-nez v1, :cond_0

    .line 388
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0013

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mSnapStyle:Landroid/text/style/TextAppearanceSpan;

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    if-nez v1, :cond_1

    .line 391
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 395
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    const-string v2, "%02d"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mSnapStyle:Landroid/text/style/TextAppearanceSpan;

    const/16 v2, 0x21

    invoke-virtual {v1, p1, v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 396
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    return-void
.end method

.method public setSnapNumVisible(ZZ)V
    .locals 1

    .line 366
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-ne p1, p2, :cond_1

    .line 367
    return-void

    .line 370
    :cond_1
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    if-nez p2, :cond_2

    .line 371
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMainContent;->initSnapNumAnimator()V

    .line 373
    :cond_2
    if-eqz p1, :cond_3

    .line 374
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 375
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->setSnapNumValue(I)V

    .line 376
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 378
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 379
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-direct {p1, p2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 p2, 0x1f4

    invoke-virtual {p1, p2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 381
    :goto_1
    return-void
.end method

.method public showDelayNumber(I)V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 331
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 332
    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCurrentMode:I

    const/16 v2, 0xa5

    if-eq v1, v2, :cond_0

    .line 333
    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectTopMargin:I

    add-int/2addr v0, v1

    .line 335
    :cond_0
    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDisplayRectTopMargin:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCurrentMode:I

    if-ne v1, v2, :cond_2

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentMainContent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 338
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 339
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 340
    iget v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDegree:I

    if-lez v0, :cond_3

    .line 341
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCaptureDelayNumber:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mDegree:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 343
    :cond_3
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 345
    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    return-void
.end method

.method public showIndicator(II)V
    .locals 0

    .line 776
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 784
    :pswitch_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->showIndicator(Lcom/android/camera/ui/FocusIndicator;I)V

    .line 785
    goto :goto_0

    .line 781
    :pswitch_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->showIndicator(Lcom/android/camera/ui/FocusIndicator;I)V

    .line 782
    goto :goto_0

    .line 778
    :pswitch_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentMainContent;->showIndicator(Lcom/android/camera/ui/FocusIndicator;I)V

    .line 779
    nop

    .line 789
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showReviewViews(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 313
    if-eqz p1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 315
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object p1, p1, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object p1, p1, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 318
    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 301
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 302
    const/16 v0, 0xa6

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 304
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/FragmentMainContent;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 305
    const/16 v0, 0xd6

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 306
    invoke-static {}, Lcom/mi/config/b;->isSupportedOpticalZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    const/16 v0, 0xb8

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 309
    :cond_0
    return-void
.end method

.method public updateContentDescription()V
    .locals 3

    .line 1127
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    const v1, 0x7f0900f6

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6PreviewFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1128
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewFrame;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1129
    return-void
.end method

.method public updateEffectViewVisible()V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 475
    return-void
.end method

.method public updateEffectViewVisible(I)V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent;->mEffectCropView:Lcom/android/camera/ui/V6EffectCropView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible(I)V

    .line 480
    return-void
.end method

.method public updateFaceView(ZZZZI)V
    .locals 0

    .line 531
    if-eqz p2, :cond_0

    .line 532
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p2}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 534
    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 536
    if-lez p5, :cond_2

    .line 537
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1, p5}, Lcom/android/camera/ui/FaceView;->setCameraDisplayOrientation(I)V

    .line 540
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1, p3}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 541
    if-eqz p4, :cond_3

    .line 542
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 544
    :cond_3
    return-void
.end method
