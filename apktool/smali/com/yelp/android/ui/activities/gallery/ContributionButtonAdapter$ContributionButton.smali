.class public final enum Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;
.super Ljava/lang/Enum;
.source "ContributionButtonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

.field public static final enum TAKE_PHOTO:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

.field public static final enum TAKE_VIDEO:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;


# instance fields
.field mPictureId:I

.field mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    new-instance v0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    const-string/jumbo v1, "TAKE_PHOTO"

    const v2, 0x7f0705a8

    const v3, 0x7f0200df

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;->TAKE_PHOTO:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    .line 33
    new-instance v0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    const-string/jumbo v1, "TAKE_VIDEO"

    const v2, 0x7f0705a9

    const v3, 0x7f020408

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;->TAKE_VIDEO:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    sget-object v1, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;->TAKE_PHOTO:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;->TAKE_VIDEO:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;->$VALUES:[Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;->mTextId:I

    .line 40
    iput p4, p0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;->mPictureId:I

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;->$VALUES:[Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    return-object v0
.end method
