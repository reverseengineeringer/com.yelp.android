.class public final enum Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;
.super Ljava/lang/Enum;
.source "BetterMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

.field public static final enum FROZEN_AND_WAITING:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

.field public static final enum GETTING_FREEZE_PHOTO:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

.field public static final enum LOOKING_FOR_KEYFRAME:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

.field public static final enum NORMAL:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->NORMAL:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    .line 31
    new-instance v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    const-string/jumbo v1, "GETTING_FREEZE_PHOTO"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->GETTING_FREEZE_PHOTO:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    .line 32
    new-instance v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    const-string/jumbo v1, "LOOKING_FOR_KEYFRAME"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->LOOKING_FOR_KEYFRAME:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    .line 33
    new-instance v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    const-string/jumbo v1, "FROZEN_AND_WAITING"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->FROZEN_AND_WAITING:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    sget-object v1, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->NORMAL:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->GETTING_FREEZE_PHOTO:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->LOOKING_FOR_KEYFRAME:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->FROZEN_AND_WAITING:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->$VALUES:[Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->$VALUES:[Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    return-object v0
.end method
