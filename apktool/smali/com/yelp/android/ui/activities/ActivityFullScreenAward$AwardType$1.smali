.class final enum Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$1;
.super Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;
.source "ActivityFullScreenAward.java"


# direct methods
.method constructor <init>(Ljava/lang/String;IIIII)V
    .locals 8

    .prologue
    .line 41
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;-><init>(Ljava/lang/String;IIIIILcom/yelp/android/ui/activities/cf;)V

    return-void
.end method


# virtual methods
.method public getBodyText(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f08000f

    invoke-static {p1, v0}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
