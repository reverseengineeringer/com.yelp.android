.class final enum Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;
.super Ljava/lang/Enum;
.source "VideoTrimTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TouchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

.field public static final enum LEFT_HANDLE:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

.field public static final enum NONE:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

.field public static final enum PAN:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

.field public static final enum RIGHT_HANDLE:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;->NONE:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    .line 83
    new-instance v0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    const-string/jumbo v1, "LEFT_HANDLE"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;->LEFT_HANDLE:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    .line 84
    new-instance v0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    const-string/jumbo v1, "RIGHT_HANDLE"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;->RIGHT_HANDLE:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    .line 85
    new-instance v0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    const-string/jumbo v1, "PAN"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;->PAN:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    sget-object v1, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;->NONE:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;->LEFT_HANDLE:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;->RIGHT_HANDLE:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;->PAN:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;->$VALUES:[Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;->$VALUES:[Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    return-object v0
.end method
