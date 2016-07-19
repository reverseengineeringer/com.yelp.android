.class final enum Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType$8;
.super Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;
.source "ActivityFullScreenAward.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IIIIIIFLcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;)V
    .locals 11

    .prologue
    .line 165
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;-><init>(Ljava/lang/String;IIIIIIFLcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;Lcom/yelp/android/ui/activities/ActivityFullScreenAward$1;)V

    return-void
.end method


# virtual methods
.method public getBodyText(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const v0, 0x7f070217

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
