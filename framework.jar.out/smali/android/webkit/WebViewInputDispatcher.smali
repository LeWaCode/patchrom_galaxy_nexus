.class final Landroid/webkit/WebViewInputDispatcher;
.super Ljava/lang/Object;
.source "WebViewInputDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewInputDispatcher$1;,
        Landroid/webkit/WebViewInputDispatcher$TouchStream;,
        Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;,
        Landroid/webkit/WebViewInputDispatcher$DispatchEvent;,
        Landroid/webkit/WebViewInputDispatcher$WebKitHandler;,
        Landroid/webkit/WebViewInputDispatcher$UiHandler;,
        Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;,
        Landroid/webkit/WebViewInputDispatcher$UiCallbacks;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:I = 0x0

.field private static final ENABLE_EVENT_BATCHING:Z = true

.field public static final EVENT_TYPE_CLICK:I = 0x4

.field public static final EVENT_TYPE_DOUBLE_TAP:I = 0x5

.field public static final EVENT_TYPE_HIT_TEST:I = 0x6

.field public static final EVENT_TYPE_HOVER:I = 0x1

.field public static final EVENT_TYPE_LONG_PRESS:I = 0x3

.field public static final EVENT_TYPE_SCROLL:I = 0x2

.field public static final EVENT_TYPE_TOUCH:I = 0x0

.field public static final FLAG_PRIVATE:I = 0x1

.field public static final FLAG_WEBKIT_IN_PROGRESS:I = 0x2

.field public static final FLAG_WEBKIT_TIMEOUT:I = 0x4

.field public static final FLAG_WEBKIT_TRANSFORMED_EVENT:I = 0x8

#the value of this static final field might be set in the static constructor
.field private static final LONG_PRESS_TIMEOUT:I = 0x0

.field private static final MAX_DISPATCH_EVENT_POOL_SIZE:I = 0xa

#the value of this static final field might be set in the static constructor
.field private static final PRESSED_STATE_DURATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WebViewInputDispatcher"

#the value of this static final field might be set in the static constructor
.field private static final TAP_TIMEOUT:I = 0x0

.field private static final WEBKIT_TIMEOUT_MILLIS:J = 0xc8L


# instance fields
.field private mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

.field private mDispatchEventPoolSize:I

.field private mDoubleTapSlopSquared:F

.field private mInitialDownX:F

.field private mInitialDownY:F

.field private mIsDoubleTapCandidate:Z

.field private mIsTapCandidate:Z

.field private final mLock:Ljava/lang/Object;

.field private mPostClickScheduled:Z

.field private mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

.field private mPostHideTapHighlightScheduled:Z

.field private mPostLastWebKitScale:F

.field private mPostLastWebKitXOffset:I

.field private mPostLastWebKitYOffset:I

.field private mPostLongPressScheduled:Z

.field private mPostSendTouchEventsToWebKit:Z

.field private mPostShowTapHighlightScheduled:Z

.field private final mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

.field private mTouchSlopSquared:F

.field private final mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

.field private final mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

.field private mUiDispatchScheduled:Z

.field private final mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

.field private final mUiTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

.field private final mWebKitCallbacks:Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

.field private final mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

.field private mWebKitDispatchScheduled:Z

.field private final mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

.field private mWebKitTimeoutScheduled:Z

.field private mWebKitTimeoutTime:J

.field private final mWebKitTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    const-class v0, Landroid/webkit/WebViewInputDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/WebViewInputDispatcher;->$assertionsDisabled:Z

    .line 134
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/webkit/WebViewInputDispatcher;->TAP_TIMEOUT:I

    .line 135
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sget v1, Landroid/webkit/WebViewInputDispatcher;->TAP_TIMEOUT:I

    add-int/2addr v0, v1

    sput v0, Landroid/webkit/WebViewInputDispatcher;->LONG_PRESS_TIMEOUT:I

    .line 137
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/webkit/WebViewInputDispatcher;->DOUBLE_TAP_TIMEOUT:I

    .line 138
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    sput v0, Landroid/webkit/WebViewInputDispatcher;->PRESSED_STATE_DURATION:I

    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkit/WebViewInputDispatcher$UiCallbacks;Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;)V
    .locals 3
    .parameter "uiCallbacks"
    .parameter "webKitCallbacks"

    .prologue
    const/4 v2, 0x0

    .line 233
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    .line 97
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewInputDispatcher$TouchStream;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    .line 117
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    .line 118
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewInputDispatcher$TouchStream;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    .line 126
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    .line 127
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewInputDispatcher$TouchStream;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    .line 234
    iput-object p1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    .line 235
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$UiHandler;

    invoke-interface {p1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->getUiLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/webkit/WebViewInputDispatcher$UiHandler;-><init>(Landroid/webkit/WebViewInputDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    .line 237
    iput-object p2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

    .line 238
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    invoke-interface {p2}, Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;->getWebKitLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;-><init>(Landroid/webkit/WebViewInputDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    .line 240
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 241
    .local v0, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    .line 242
    iget v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    .line 243
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    .line 244
    iget v1, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    .line 245
    return-void
.end method

.method static synthetic access$300(Landroid/webkit/WebViewInputDispatcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->dispatchUiEvents(Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/webkit/WebViewInputDispatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->handleWebKitTimeout()V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/WebViewInputDispatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->postLongPress()V

    return-void
.end method

.method static synthetic access$600(Landroid/webkit/WebViewInputDispatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->postClick()V

    return-void
.end method

.method static synthetic access$700(Landroid/webkit/WebViewInputDispatcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->postShowTapHighlight(Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/webkit/WebViewInputDispatcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->dispatchWebKitEvents(Z)V

    return-void
.end method

.method private batchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z
    .locals 2
    .parameter "in"
    .parameter "tail"

    .prologue
    .line 970
    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    iget v1, p2, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    iget v1, p2, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iget v1, p2, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iget v1, p2, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    iget v1, p2, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 976
    iget-object v0, p2, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    iget-object v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->addBatch(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 978
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkForDoubleTapOnDownLocked(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 483
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    .line 484
    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-nez v2, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownX:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v0, v2, v3

    .line 488
    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownY:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 489
    .local v1, deltaY:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 490
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 491
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    goto :goto_0
.end method

.method private checkForSlopLocked(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 521
    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-nez v2, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownX:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v0, v2, v3

    .line 525
    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownY:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 526
    .local v1, deltaY:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 527
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 528
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    .line 529
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_0
.end method

.method private copyDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .locals 3
    .parameter "d"

    .prologue
    .line 998
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->obtainUninitializedDispatchEventLocked()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 999
    .local v0, copy:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    iget-object v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 1000
    iget-object v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 1002
    :cond_0
    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .line 1003
    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 1004
    iget-wide v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iput-wide v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    .line 1005
    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    .line 1006
    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    .line 1007
    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    .line 1008
    iget-object v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    iput-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1009
    return-object v0
.end method

.method private dispatchUiEvent(Landroid/view/MotionEvent;II)V
    .locals 1
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"

    .prologue
    .line 841
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->dispatchUiEvent(Landroid/view/MotionEvent;II)V

    .line 842
    return-void
.end method

.method private dispatchUiEvents(Z)V
    .locals 7
    .parameter "calledFromHandler"

    .prologue
    .line 788
    :cond_0
    :goto_0
    iget-object v5, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 789
    :try_start_0
    iget-object v4, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v4}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->dequeue()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 790
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-nez v0, :cond_2

    .line 791
    iget-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    if-eqz v4, :cond_1

    .line 792
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    .line 793
    if-nez p1, :cond_1

    .line 794
    iget-object v4, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 797
    :cond_1
    monitor-exit v5

    return-void

    .line 800
    :cond_2
    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 801
    .local v1, event:Landroid/view/MotionEvent;
    if-eqz v1, :cond_3

    iget v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 802
    const/high16 v4, 0x3f80

    iget v6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    div-float/2addr v4, v6

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->scale(F)V

    .line 803
    iget v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 804
    iget v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 807
    :cond_3
    iget v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .line 808
    .local v2, eventType:I
    if-nez v2, :cond_4

    .line 809
    iget-object v4, p0, Landroid/webkit/WebViewInputDispatcher;->mUiTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v4, v1}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 815
    :cond_4
    iget v3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 817
    .local v3, flags:I
    iget-object v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-ne v1, v4, :cond_5

    .line 818
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 820
    :cond_5
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 822
    const/4 v4, 0x4

    if-ne v2, v4, :cond_6

    .line 823
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleHideTapHighlightLocked()V

    .line 825
    :cond_6
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    if-eqz v1, :cond_0

    .line 829
    invoke-direct {p0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher;->dispatchUiEvent(Landroid/view/MotionEvent;II)V

    .line 830
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 825
    .end local v0           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .end local v1           #event:Landroid/view/MotionEvent;
    .end local v2           #eventType:I
    .end local v3           #flags:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private dispatchWebKitEvent(Landroid/view/MotionEvent;II)Z
    .locals 2
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"

    .prologue
    .line 689
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

    invoke-interface {v1, p0, p1, p2, p3}, Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;->dispatchWebKitEvent(Landroid/webkit/WebViewInputDispatcher;Landroid/view/MotionEvent;II)Z

    move-result v0

    .line 694
    .local v0, preventDefault:Z
    return v0
.end method

.method private dispatchWebKitEvents(Z)V
    .locals 11
    .parameter "calledFromHandler"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 599
    :goto_0
    iget-object v8, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 603
    :try_start_0
    iget-object v9, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v9, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 604
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-nez v0, :cond_1

    .line 605
    iget-boolean v6, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    if-eqz v6, :cond_0

    .line 606
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    .line 607
    if-nez p1, :cond_0

    .line 608
    iget-object v6, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;->removeMessages(I)V

    .line 612
    :cond_0
    monitor-exit v8

    return-void

    .line 615
    :cond_1
    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 616
    .local v1, event:Landroid/view/MotionEvent;
    if-eqz v1, :cond_2

    .line 617
    iget v9, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    int-to-float v9, v9

    iget v10, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 618
    iget v9, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->scale(F)V

    .line 619
    iget v9, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 622
    :cond_2
    iget v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .line 623
    .local v2, eventType:I
    if-nez v2, :cond_3

    .line 624
    iget-object v9, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v9, v1}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 630
    :cond_3
    iget v9, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 631
    iget v3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 632
    .local v3, flags:I
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 636
    if-nez v1, :cond_7

    .line 637
    const/4 v4, 0x0

    .line 642
    .local v4, preventDefault:Z
    :goto_1
    iget-object v8, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 643
    :try_start_1
    iget v3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 644
    and-int/lit8 v9, v3, -0x3

    iput v9, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 645
    iget-object v9, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eq v1, v9, :cond_8

    move v5, v6

    .line 647
    .local v5, recycleEvent:Z
    :goto_2
    and-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_9

    .line 649
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 672
    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    if-eqz v5, :cond_5

    .line 673
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 676
    :cond_5
    const/4 v9, 0x4

    if-ne v2, v9, :cond_6

    .line 677
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleHideTapHighlightLocked()V

    .line 679
    :cond_6
    monitor-exit v8

    goto :goto_0

    .end local v5           #recycleEvent:Z
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 632
    .end local v0           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .end local v1           #event:Landroid/view/MotionEvent;
    .end local v2           #eventType:I
    .end local v3           #flags:I
    .end local v4           #preventDefault:Z
    :catchall_1
    move-exception v6

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 639
    .restart local v0       #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .restart local v1       #event:Landroid/view/MotionEvent;
    .restart local v2       #eventType:I
    .restart local v3       #flags:I
    :cond_7
    invoke-direct {p0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher;->dispatchWebKitEvent(Landroid/view/MotionEvent;II)Z

    move-result v4

    .restart local v4       #preventDefault:Z
    goto :goto_1

    :cond_8
    move v5, v7

    .line 645
    goto :goto_2

    .line 652
    .restart local v5       #recycleEvent:Z
    :cond_9
    :try_start_3
    sget-boolean v9, Landroid/webkit/WebViewInputDispatcher;->$assertionsDisabled:Z

    if-nez v9, :cond_a

    iget-object v9, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v9, v9, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    if-eq v9, v0, :cond_a

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 653
    :cond_a
    iget-object v9, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v9}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->dequeue()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 655
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->updateWebKitTimeoutLocked()V

    .line 657
    and-int/lit8 v9, v3, 0x1

    if-eqz v9, :cond_b

    .line 659
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_3

    .line 660
    :cond_b
    if-eqz v4, :cond_c

    .line 662
    iget v9, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-nez v9, :cond_4

    .line 663
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiCancelTouchEventIfNeededLocked()V

    .line 664
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    goto :goto_3

    .line 668
    :cond_c
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method private drainStaleWebKitEventsLocked()V
    .locals 3

    .prologue
    .line 703
    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v2, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 706
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->isMoveEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, v2}, Landroid/webkit/WebViewInputDispatcher;->isMoveEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 707
    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 708
    .local v1, next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->skipWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 709
    move-object v0, v1

    .line 710
    goto :goto_0

    .line 711
    .end local v1           #next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iput-object v0, v2, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 712
    return-void
.end method

.method private enqueueDoubleTapLocked(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 506
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 507
    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    const/4 v2, 0x5

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 509
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 510
    return-void
.end method

.method private enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 845
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->shouldSkipWebKit(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 850
    :goto_0
    return-void

    .line 848
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private enqueueHitTestLocked(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 513
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->clearPreviousHitTest()V

    .line 514
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 515
    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    const/4 v2, 0x6

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 517
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 518
    return-void
.end method

.method private enqueueUiCancelTouchEventIfNeededLocked()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 933
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->isCancelNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 934
    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/high16 v6, 0x3f80

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 936
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 938
    .end local v7           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_1
    return-void
.end method

.method private enqueueUiEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 941
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewInputDispatcher;->batchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 949
    :goto_0
    return-void

    .line 947
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 955
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->enqueue(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 956
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleUiDispatchLocked()V

    .line 957
    return-void
.end method

.method private enqueueWebKitCancelTouchEventIfNeededLocked()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 879
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->isCancelNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 880
    :cond_0
    const/4 v1, 0x0

    const/high16 v6, 0x3f80

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 882
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 883
    iput-boolean v3, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    .line 885
    .end local v7           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_1
    return-void
.end method

.method private enqueueWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 888
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewInputDispatcher;->batchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 896
    :goto_0
    return-void

    .line 894
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private enqueueWebKitEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 902
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->enqueue(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 903
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleWebKitDispatchLocked()V

    .line 904
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->updateWebKitTimeoutLocked()V

    .line 905
    return-void
.end method

.method private handleWebKitTimeout()V
    .locals 4

    .prologue
    .line 722
    iget-object v3, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 723
    :try_start_0
    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    if-nez v2, :cond_0

    .line 724
    monitor-exit v3

    .line 759
    :goto_0
    return-void

    .line 726
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    .line 733
    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v2}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->dequeueList()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 737
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    iget v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 738
    iget v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 739
    iget v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 740
    iget-object v0, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 748
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 749
    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 750
    .local v1, next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->skipWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 751
    move-object v0, v1

    .line 752
    goto :goto_1

    .line 742
    .end local v1           #next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_2
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->copyDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 743
    iget v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    goto :goto_1

    .line 758
    .end local v0           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 757
    .restart local v0       #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_3
    :try_start_1
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitCancelTouchEventIfNeededLocked()V

    .line 758
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private hideTapCandidateLocked()V
    .locals 2

    .prologue
    .line 393
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    .line 394
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    .line 395
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->showTapHighlight(Z)V

    .line 396
    return-void
.end method

.method private isClickCandidateLocked(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 496
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 502
    :cond_1
    :goto_0
    return v2

    .line 501
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 502
    .local v0, downDuration:J
    sget v4, Landroid/webkit/WebViewInputDispatcher;->LONG_PRESS_TIMEOUT:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method private isMoveEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z
    .locals 2
    .parameter "d"

    .prologue
    .line 698
    iget-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .locals 5
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"
    .parameter "webKitXOffset"
    .parameter "webKitYOffset"
    .parameter "webKitScale"

    .prologue
    .line 983
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->obtainUninitializedDispatchEventLocked()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 984
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    iput-object p1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 985
    iput p2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .line 986
    iput p3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 987
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    .line 988
    iput p4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    .line 989
    iput p5, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    .line 990
    iput p6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    .line 994
    return-object v0
.end method

.method private obtainUninitializedDispatchEventLocked()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1013
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1014
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-eqz v0, :cond_0

    .line 1015
    iget v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    .line 1016
    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1017
    iput-object v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1021
    :goto_0
    return-object v0

    .line 1019
    :cond_0
    new-instance v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .end local v0           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {v0, v2}, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    .restart local v0       #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    goto :goto_0
.end method

.method private postClick()V
    .locals 10

    .prologue
    .line 463
    iget-object v9, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 464
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-nez v0, :cond_0

    .line 465
    monitor-exit v9

    .line 480
    :goto_0
    return-void

    .line 467
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    .line 469
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->getLastEvent()Landroid/view/MotionEvent;

    move-result-object v8

    .line 470
    .local v8, event:Landroid/view/MotionEvent;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 471
    :cond_1
    monitor-exit v9

    goto :goto_0

    .line 479
    .end local v8           #event:Landroid/view/MotionEvent;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 474
    .restart local v8       #event:Landroid/view/MotionEvent;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->showTapCandidateLocked()V

    .line 475
    invoke-static {v8}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 476
    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    const/4 v2, 0x4

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 478
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 479
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private postLongPress()V
    .locals 10

    .prologue
    .line 363
    iget-object v9, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 364
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    if-nez v0, :cond_0

    .line 365
    monitor-exit v9

    .line 390
    :goto_0
    return-void

    .line 367
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    .line 369
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->getLastEvent()Landroid/view/MotionEvent;

    move-result-object v8

    .line 370
    .local v8, event:Landroid/view/MotionEvent;
    if-nez v8, :cond_1

    .line 371
    monitor-exit v9

    goto :goto_0

    .line 389
    .end local v8           #event:Landroid/view/MotionEvent;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 374
    .restart local v8       #event:Landroid/view/MotionEvent;
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 381
    :pswitch_0
    monitor-exit v9

    goto :goto_0

    .line 384
    :pswitch_1
    invoke-static {v8}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 385
    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 386
    const/4 v2, 0x3

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 388
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 389
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private postShowTapHighlight(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 433
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    if-eqz p1, :cond_1

    .line 435
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    if-nez v0, :cond_0

    .line 436
    monitor-exit v1

    .line 447
    :goto_0
    return-void

    .line 438
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    .line 445
    :goto_1
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->showTapHighlight(Z)V

    .line 446
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 440
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    if-nez v0, :cond_2

    .line 441
    monitor-exit v1

    goto :goto_0

    .line 443
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 1025
    iget-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1027
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 1030
    :cond_0
    iget v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1031
    iget v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    .line 1032
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    iput-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1033
    iput-object p1, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1035
    :cond_1
    return-void
.end method

.method private scheduleClickLocked()V
    .locals 4

    .prologue
    .line 450
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    .line 452
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x4

    sget v2, Landroid/webkit/WebViewInputDispatcher;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 453
    return-void
.end method

.method private scheduleHideTapHighlightLocked()V
    .locals 4

    .prologue
    .line 419
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    .line 421
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x6

    sget v2, Landroid/webkit/WebViewInputDispatcher;->PRESSED_STATE_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 423
    return-void
.end method

.method private scheduleLongPressLocked()V
    .locals 4

    .prologue
    .line 349
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    .line 351
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x3

    sget v2, Landroid/webkit/WebViewInputDispatcher;->LONG_PRESS_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 353
    return-void
.end method

.method private scheduleShowTapHighlightLocked()V
    .locals 4

    .prologue
    .line 405
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    .line 407
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x5

    sget v2, Landroid/webkit/WebViewInputDispatcher;->TAP_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 409
    return-void
.end method

.method private scheduleUiDispatchLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 960
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    if-nez v0, :cond_0

    .line 961
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessage(I)Z

    .line 962
    iput-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    .line 964
    :cond_0
    return-void
.end method

.method private scheduleWebKitDispatchLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 908
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    if-nez v0, :cond_0

    .line 909
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;->sendEmptyMessage(I)Z

    .line 910
    iput-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    .line 912
    :cond_0
    return-void
.end method

.method private shouldSkipWebKit(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z
    .locals 4
    .parameter "d"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 853
    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 873
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 866
    :pswitch_2
    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 868
    goto :goto_0

    .line 870
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 853
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showTapCandidateLocked()V
    .locals 2

    .prologue
    .line 399
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    .line 400
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    .line 401
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->showTapHighlight(Z)V

    .line 402
    return-void
.end method

.method private skipWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 762
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 763
    iget v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 764
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 769
    :goto_0
    return-void

    .line 766
    :cond_0
    iget v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 767
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private unscheduleClickLocked()V
    .locals 2

    .prologue
    .line 456
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-eqz v0, :cond_0

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    .line 458
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 460
    :cond_0
    return-void
.end method

.method private unscheduleHideTapHighlightLocked()V
    .locals 2

    .prologue
    .line 426
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    if-eqz v0, :cond_0

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    .line 428
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 430
    :cond_0
    return-void
.end method

.method private unscheduleLongPressLocked()V
    .locals 2

    .prologue
    .line 356
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    if-eqz v0, :cond_0

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    .line 358
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 360
    :cond_0
    return-void
.end method

.method private unscheduleShowTapHighlightLocked()V
    .locals 2

    .prologue
    .line 412
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    if-eqz v0, :cond_0

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    .line 414
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 416
    :cond_0
    return-void
.end method

.method private updateStateTrackersLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "d"
    .parameter "event"

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 534
    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iput v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    .line 535
    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iput v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    .line 536
    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    iput v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    .line 537
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 538
    .local v0, action:I
    :goto_0
    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-eqz v2, :cond_2

    .line 577
    :cond_0
    :goto_1
    return-void

    .end local v0           #action:I
    :cond_1
    move v0, v1

    .line 537
    goto :goto_0

    .line 542
    .restart local v0       #action:I
    :cond_2
    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v3, :cond_4

    .line 544
    :cond_3
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 545
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 546
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    .line 547
    iput-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    .line 548
    iput-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    .line 549
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_1

    .line 550
    :cond_4
    if-nez v0, :cond_6

    .line 551
    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->checkForDoubleTapOnDownLocked(Landroid/view/MotionEvent;)V

    .line 552
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleLongPressLocked()V

    .line 553
    iput-boolean v3, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    .line 554
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownX:F

    .line 555
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownY:F

    .line 556
    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->enqueueHitTestLocked(Landroid/view/MotionEvent;)V

    .line 557
    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    if-eqz v1, :cond_5

    .line 558
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_1

    .line 560
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleShowTapHighlightLocked()V

    goto :goto_1

    .line 562
    :cond_6
    if-ne v0, v3, :cond_9

    .line 563
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 564
    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->isClickCandidateLocked(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 565
    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    if-eqz v1, :cond_7

    .line 566
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    .line 567
    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->enqueueDoubleTapLocked(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 569
    :cond_7
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleClickLocked()V

    goto :goto_1

    .line 572
    :cond_8
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_1

    .line 574
    :cond_9
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 575
    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->checkForSlopLocked(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method private updateWebKitTimeoutLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 915
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 916
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutTime:J

    iget-wide v3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    if-eqz v1, :cond_2

    .line 920
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v1, v5}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 921
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    .line 923
    :cond_2
    if-eqz v0, :cond_0

    .line 924
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    iget-wide v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    invoke-virtual {v1, v5, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 925
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    .line 926
    iget-wide v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iput-wide v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutTime:J

    goto :goto_0
.end method


# virtual methods
.method public dispatchUiEvents()V
    .locals 1

    .prologue
    .line 780
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->dispatchUiEvents(Z)V

    .line 781
    return-void
.end method

.method public dispatchWebKitEvents()V
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->dispatchWebKitEvents(Z)V

    .line 589
    return-void
.end method

.method public postPointerEvent(Landroid/view/MotionEvent;IIF)Z
    .locals 11
    .parameter "event"
    .parameter "webKitXOffset"
    .parameter "webKitYOffset"
    .parameter "webKitScale"

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 279
    if-nez p1, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "event cannot be null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    .line 289
    .local v7, action:I
    packed-switch v7, :pswitch_data_0

    .line 345
    :goto_0
    :pswitch_0
    return v0

    .line 296
    :pswitch_1
    const/4 v2, 0x0

    .line 310
    .local v2, eventType:I
    :goto_1
    iget-object v10, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 312
    move-object v1, p1

    .line 313
    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    if-nez v2, :cond_2

    .line 314
    :try_start_0
    iget-object v3, p0, Landroid/webkit/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v3, p1}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 315
    if-nez v1, :cond_1

    .line 319
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 320
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 321
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    .line 322
    monitor-exit v10

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 299
    .end local v1           #eventToEnqueue:Landroid/view/MotionEvent;
    .end local v2           #eventType:I
    :pswitch_2
    const/4 v2, 0x2

    .line 300
    .restart local v2       #eventType:I
    goto :goto_1

    .line 304
    .end local v2           #eventType:I
    :pswitch_3
    const/4 v2, 0x1

    .line 305
    .restart local v2       #eventType:I
    goto :goto_1

    .line 325
    .restart local v1       #eventToEnqueue:Landroid/view/MotionEvent;
    :cond_1
    if-nez v7, :cond_2

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    .line 336
    :cond_2
    :goto_2
    if-ne v1, p1, :cond_3

    .line 337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    .line 340
    :cond_3
    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v8

    .line 342
    .local v8, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v8, p1}, Landroid/webkit/WebViewInputDispatcher;->updateStateTrackersLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/view/MotionEvent;)V

    .line 343
    invoke-direct {p0, v8}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 344
    monitor-exit v10

    move v0, v9

    .line 345
    goto :goto_0

    .line 328
    .end local v8           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_4
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    if-eqz v0, :cond_2

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setWebKitWantsTouchEvents(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 257
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 258
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    if-eq v0, p1, :cond_1

    .line 259
    if-nez p1, :cond_0

    .line 260
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitCancelTouchEventIfNeededLocked()V

    .line 262
    :cond_0
    iput-boolean p1, p0, Landroid/webkit/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    .line 264
    :cond_1
    monitor-exit v1

    .line 265
    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public skipWebkitForRemainingTouchStream()V
    .locals 0

    .prologue
    .line 717
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->handleWebKitTimeout()V

    .line 718
    return-void
.end method
