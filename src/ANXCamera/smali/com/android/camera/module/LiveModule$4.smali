.class Lcom/android/camera/module/LiveModule$4;
.super Ljava/lang/Object;
.source "LiveModule.java"

# interfaces
.implements Lcom/android/camera/SensorStateManager$SensorStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/LiveModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/LiveModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/LiveModule;)V
    .locals 0

    .line 930
    iput-object p1, p0, Lcom/android/camera/module/LiveModule$4;->this$0:Lcom/android/camera/module/LiveModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isWorking()Z
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/android/camera/module/LiveModule$4;->this$0:Lcom/android/camera/module/LiveModule;

    invoke-virtual {v0}, Lcom/android/camera/module/LiveModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/LiveModule$4;->this$0:Lcom/android/camera/module/LiveModule;

    invoke-virtual {v0}, Lcom/android/camera/module/LiveModule;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyDevicePostureChanged()V
    .locals 1

    .line 974
    iget-object v0, p0, Lcom/android/camera/module/LiveModule$4;->this$0:Lcom/android/camera/module/LiveModule;

    iget-object v0, v0, Lcom/android/camera/module/LiveModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getEdgeShutterView()Lcom/android/camera/ui/V9EdgeShutterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V9EdgeShutterView;->onDevicePostureChanged()V

    .line 975
    return-void
.end method

.method public onDeviceBecomeStable()V
    .locals 2

    .line 933
    invoke-static {}, Lcom/android/camera/module/LiveModule;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDeviceBecomeStable"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    return-void
.end method

.method public onDeviceBeginMoving()V
    .locals 0

    .line 960
    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 7

    .line 943
    iget-object v0, p0, Lcom/android/camera/module/LiveModule$4;->this$0:Lcom/android/camera/module/LiveModule;

    iget-object v0, v0, Lcom/android/camera/module/LiveModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isEvAdjusted(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/LiveModule$4;->this$0:Lcom/android/camera/module/LiveModule;

    iget-boolean v0, v0, Lcom/android/camera/module/LiveModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 945
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/android/camera/module/LiveModule$4;->this$0:Lcom/android/camera/module/LiveModule;

    invoke-static {v0}, Lcom/android/camera/module/LiveModule;->access$600(Lcom/android/camera/module/LiveModule;)J

    move-result-wide v3

    const-wide/16 v5, 0xbb8

    invoke-static/range {v1 .. v6}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/LiveModule$4;->this$0:Lcom/android/camera/module/LiveModule;

    .line 946
    invoke-virtual {v0}, Lcom/android/camera/module/LiveModule;->is3ALocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/android/camera/module/LiveModule$4;->this$0:Lcom/android/camera/module/LiveModule;

    invoke-static {v0}, Lcom/android/camera/module/LiveModule;->access$700(Lcom/android/camera/module/LiveModule;)Lcom/android/camera/module/loader/camera2/FocusManager2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/LiveModule$4;->this$0:Lcom/android/camera/module/LiveModule;

    invoke-static {v0}, Lcom/android/camera/module/LiveModule;->access$700(Lcom/android/camera/module/LiveModule;)Lcom/android/camera/module/loader/camera2/FocusManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/android/camera/module/LiveModule$4;->this$0:Lcom/android/camera/module/LiveModule;

    invoke-virtual {v0}, Lcom/android/camera/module/LiveModule;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/android/camera/module/LiveModule$4;->this$0:Lcom/android/camera/module/LiveModule;

    invoke-static {v0}, Lcom/android/camera/module/LiveModule;->access$700(Lcom/android/camera/module/LiveModule;)Lcom/android/camera/module/loader/camera2/FocusManager2;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onDeviceKeepMoving(D)V

    .line 955
    :cond_0
    return-void
.end method

.method public onDeviceKeepStable()V
    .locals 0

    .line 965
    return-void
.end method

.method public onDeviceOrientationChanged(FZ)V
    .locals 0

    .line 970
    return-void
.end method

.method public onDeviceRotationChanged([F)V
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/android/camera/module/LiveModule$4;->this$0:Lcom/android/camera/module/LiveModule;

    invoke-static {v0}, Lcom/android/camera/module/LiveModule;->access$800(Lcom/android/camera/module/LiveModule;)Lcom/android/camera/protocol/ModeProtocol$LiveConfigChanges;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/android/camera/module/LiveModule$4;->this$0:Lcom/android/camera/module/LiveModule;

    invoke-static {v0}, Lcom/android/camera/module/LiveModule;->access$800(Lcom/android/camera/module/LiveModule;)Lcom/android/camera/protocol/ModeProtocol$LiveConfigChanges;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$LiveConfigChanges;->onDeviceRotationChange([F)V

    .line 982
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/android/camera/module/LiveModule$4;->this$0:Lcom/android/camera/module/LiveModule;

    invoke-static {v0}, Lcom/android/camera/module/LiveModule;->access$800(Lcom/android/camera/module/LiveModule;)Lcom/android/camera/protocol/ModeProtocol$LiveConfigChanges;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/android/camera/module/LiveModule$4;->this$0:Lcom/android/camera/module/LiveModule;

    invoke-static {v0}, Lcom/android/camera/module/LiveModule;->access$800(Lcom/android/camera/module/LiveModule;)Lcom/android/camera/protocol/ModeProtocol$LiveConfigChanges;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$LiveConfigChanges;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 989
    :cond_0
    return-void
.end method
