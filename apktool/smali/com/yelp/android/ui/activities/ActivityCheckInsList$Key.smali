.class public final enum Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;
.super Ljava/lang/Enum;
.source "ActivityCheckInsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityCheckInsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

.field public static final enum actionTitle:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

.field public static final enum badgeIcon:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

.field public static final enum bottomInfoText:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

.field public static final enum itemImage:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

.field public static final enum locationTitle:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

.field public static final enum ratingImage:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

.field public static final enum reviewCount:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

.field public static final enum rightInfoText:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;


# instance fields
.field final viewId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 51
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    const-string/jumbo v1, "badgeIcon"

    const v2, 0x7f0f02e9

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->badgeIcon:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    .line 52
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    const-string/jumbo v1, "actionTitle"

    const v2, 0x7f0f02ea

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->actionTitle:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    .line 53
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    const-string/jumbo v1, "locationTitle"

    const v2, 0x7f0f0420

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->locationTitle:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    .line 54
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    const-string/jumbo v1, "ratingImage"

    const v2, 0x7f0f0422

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->ratingImage:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    .line 55
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    const-string/jumbo v1, "reviewCount"

    const v2, 0x7f0f03cb

    invoke-direct {v0, v1, v8, v2}, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->reviewCount:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    .line 56
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    const-string/jumbo v1, "bottomInfoText"

    const/4 v2, 0x5

    const v3, 0x7f0f0426

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->bottomInfoText:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    .line 57
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    const-string/jumbo v1, "itemImage"

    const/4 v2, 0x6

    const v3, 0x7f0f041f

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->itemImage:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    .line 58
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    const-string/jumbo v1, "rightInfoText"

    const/4 v2, 0x7

    const v3, 0x7f0f02e8

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->rightInfoText:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->badgeIcon:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->actionTitle:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->locationTitle:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->ratingImage:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->reviewCount:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->bottomInfoText:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->itemImage:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->rightInfoText:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->$VALUES:[Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->viewId:I

    .line 64
    return-void
.end method

.method static getIds()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<[",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->values()[Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    move-result-object v0

    array-length v1, v0

    .line 68
    new-array v2, v1, [I

    .line 69
    new-array v3, v1, [Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 71
    invoke-static {}, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->values()[Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    move-result-object v4

    aget-object v4, v4, v0

    iget v4, v4, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->viewId:I

    aput v4, v2, v0

    .line 72
    invoke-static {}, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->values()[Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->$VALUES:[Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    return-object v0
.end method
