.class public enum Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;
.super Ljava/lang/Enum;
.source "FriendFinderSourceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;

.field public static final enum CONTACTS:Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;

.field public static final enum FACEBOOK:Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;


# instance fields
.field private mIconId:I

.field private mIsChecked:Z

.field private mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType$1;

    const-string/jumbo v1, "FACEBOOK"

    const v2, 0x7f020271

    const v3, 0x7f0702d1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType$1;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;->FACEBOOK:Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;

    .line 15
    new-instance v0, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;

    const-string/jumbo v1, "CONTACTS"

    const v2, 0x7f020270

    const v3, 0x7f0702d0

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;->CONTACTS:Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;

    sget-object v1, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;->FACEBOOK:Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;->CONTACTS:Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;->$VALUES:[Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;->getDefaultToggleSelection()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;->mIsChecked:Z

    .line 22
    iput p3, p0, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;->mIconId:I

    .line 23
    iput p4, p0, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;->mTitleId:I

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILcom/yelp/android/ui/activities/friends/FriendFinderSourceType$1;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;->$VALUES:[Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;

    return-object v0
.end method


# virtual methods
.method public getDefaultToggleSelection()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;->mIconId:I

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;->mTitleId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;->mIsChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/friends/FriendFinderSourceType;->mIsChecked:Z

    .line 44
    return-void
.end method
