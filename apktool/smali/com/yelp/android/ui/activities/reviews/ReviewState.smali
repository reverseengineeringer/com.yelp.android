.class public final enum Lcom/yelp/android/ui/activities/reviews/ReviewState;
.super Ljava/lang/Enum;
.source "ReviewState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/reviews/ReviewState$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/reviews/ReviewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/reviews/ReviewState;

.field public static final enum DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

.field public static final enum FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

.field public static final enum FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

.field public static final enum NOT_STARTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mStringRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;

    const-string/jumbo v1, "NOT_STARTED"

    const-string/jumbo v2, "not_started"

    const v3, 0x7f070662

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->NOT_STARTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    .line 7
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;

    const-string/jumbo v1, "DRAFTED"

    const-string/jumbo v2, "drafted"

    const v3, 0x7f0702d4

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    .line 8
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;

    const-string/jumbo v1, "FINISHED_RECENTLY"

    const-string/jumbo v2, "finished_recently"

    const v3, 0x7f07027e

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    .line 9
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;

    const-string/jumbo v1, "FINISHED_NOT_RECENTLY"

    const-string/jumbo v2, "finished_not_recently"

    const v3, 0x7f070624

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewState;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/ui/activities/reviews/ReviewState;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->NOT_STARTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->$VALUES:[Lcom/yelp/android/ui/activities/reviews/ReviewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->mDescription:Ljava/lang/String;

    .line 16
    iput p4, p0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->mStringRes:I

    .line 17
    return-void
.end method

.method public static fromDescription(Ljava/lang/String;)Lcom/yelp/android/ui/activities/reviews/ReviewState;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->NOT_STARTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->NOT_STARTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    .line 31
    :goto_0
    return-object v0

    .line 26
    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    goto :goto_0

    .line 28
    :cond_1
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    goto :goto_0

    .line 30
    :cond_2
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    goto :goto_0

    .line 33
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The description does not match any review states"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/reviews/ReviewState;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/reviews/ReviewState;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->$VALUES:[Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/reviews/ReviewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/reviews/ReviewState;

    return-object v0
.end method


# virtual methods
.method public getComposeTypeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState$1;->a:[I

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 48
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    const-string/jumbo v0, "add"

    goto :goto_0

    .line 42
    :pswitch_1
    const-string/jumbo v0, "finish"

    goto :goto_0

    .line 44
    :pswitch_2
    const-string/jumbo v0, "edit"

    goto :goto_0

    .line 46
    :pswitch_3
    const-string/jumbo v0, "update"

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewStateString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState$1;->a:[I

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 58
    const-string/jumbo v0, "new"

    :goto_0
    return-object v0

    .line 54
    :pswitch_0
    const-string/jumbo v0, "edited"

    goto :goto_0

    .line 56
    :pswitch_1
    const-string/jumbo v0, "updated"

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getTextResourceForState()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->mStringRes:I

    return v0
.end method
