.class public final enum Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;
.super Ljava/lang/Enum;
.source "WriteReviewExperiment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/experiment/WriteReviewExperiment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Cohort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

.field public static final enum empty_no_text:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

.field public static final enum empty_with_text:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

.field public static final enum gray_no_text:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

.field public static final enum gray_with_text:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

.field public static final enum square_no_text:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

.field public static final enum square_with_text:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

.field public static final enum status_quo:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;


# instance fields
.field private mStarStyle:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

.field private mWithText:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 16
    new-instance v0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    const-string/jumbo v1, "status_quo"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;-><init>(Ljava/lang/String;ILcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;Z)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->status_quo:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    .line 17
    new-instance v0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    const-string/jumbo v1, "square_with_text"

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->SQUARE:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;-><init>(Ljava/lang/String;ILcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;Z)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->square_with_text:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    .line 18
    new-instance v0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    const-string/jumbo v1, "square_no_text"

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->SQUARE:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;-><init>(Ljava/lang/String;ILcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;Z)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->square_no_text:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    .line 19
    new-instance v0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    const-string/jumbo v1, "gray_with_text"

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->GRAY:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;-><init>(Ljava/lang/String;ILcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;Z)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->gray_with_text:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    .line 20
    new-instance v0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    const-string/jumbo v1, "gray_no_text"

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->GRAY:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    invoke-direct {v0, v1, v8, v2, v5}, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;-><init>(Ljava/lang/String;ILcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;Z)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->gray_no_text:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    .line 21
    new-instance v0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    const-string/jumbo v1, "empty_with_text"

    const/4 v2, 0x5

    sget-object v3, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->EMPTY:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;-><init>(Ljava/lang/String;ILcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;Z)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->empty_with_text:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    .line 22
    new-instance v0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    const-string/jumbo v1, "empty_no_text"

    const/4 v2, 0x6

    sget-object v3, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->EMPTY:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;-><init>(Ljava/lang/String;ILcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;Z)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->empty_no_text:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    .line 15
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    sget-object v1, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->status_quo:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->square_with_text:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->square_no_text:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->gray_with_text:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->gray_no_text:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->empty_with_text:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->empty_no_text:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->$VALUES:[Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->mStarStyle:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    .line 29
    iput-boolean p4, p0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->mWithText:Z

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->$VALUES:[Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    return-object v0
.end method


# virtual methods
.method public getStarStyle()Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->mStarStyle:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    return-object v0
.end method

.method public isWithText()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->mWithText:Z

    return v0
.end method
