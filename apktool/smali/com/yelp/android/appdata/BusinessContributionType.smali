.class public enum Lcom/yelp/android/appdata/BusinessContributionType;
.super Ljava/lang/Enum;
.source "BusinessContributionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/BusinessContributionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/BusinessContributionType;

.field public static final enum BUSINESS_PHOTO:Lcom/yelp/android/appdata/BusinessContributionType;

.field public static final enum BUSINESS_VIDEO:Lcom/yelp/android/appdata/BusinessContributionType;

.field public static final enum CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

.field private static final EXTRA_CONTRIBUTION_PREFIX:Ljava/lang/String; = "extra.contribution."

.field private static final EXTRA_TYPE:Ljava/lang/String; = "extra.type"

.field public static final enum REVIEW:Lcom/yelp/android/appdata/BusinessContributionType;

.field public static final enum TIP:Lcom/yelp/android/appdata/BusinessContributionType;


# instance fields
.field private final mParcelKey:Ljava/lang/String;

.field private final mTitleRes:I

.field private final mTypeDescriptor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 21
    new-instance v0, Lcom/yelp/android/appdata/BusinessContributionType$1;

    const-string/jumbo v1, "CHECK_IN"

    const v2, 0x7f0701ab

    const-string/jumbo v3, "check-in"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/yelp/android/appdata/BusinessContributionType$1;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    .line 31
    new-instance v0, Lcom/yelp/android/appdata/BusinessContributionType;

    const-string/jumbo v1, "BUSINESS_PHOTO"

    const v2, 0x7f070184

    const-string/jumbo v3, "photo"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/yelp/android/appdata/BusinessContributionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_PHOTO:Lcom/yelp/android/appdata/BusinessContributionType;

    .line 32
    new-instance v0, Lcom/yelp/android/appdata/BusinessContributionType;

    const-string/jumbo v1, "BUSINESS_VIDEO"

    const v2, 0x7f070647

    const-string/jumbo v3, "video"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/yelp/android/appdata/BusinessContributionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_VIDEO:Lcom/yelp/android/appdata/BusinessContributionType;

    .line 33
    new-instance v0, Lcom/yelp/android/appdata/BusinessContributionType;

    const-string/jumbo v1, "TIP"

    const v2, 0x7f0705df

    const-string/jumbo v3, "tip"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/yelp/android/appdata/BusinessContributionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/BusinessContributionType;->TIP:Lcom/yelp/android/appdata/BusinessContributionType;

    .line 34
    new-instance v0, Lcom/yelp/android/appdata/BusinessContributionType$2;

    const-string/jumbo v1, "REVIEW"

    const v2, 0x7f070510

    const-string/jumbo v3, "review"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/yelp/android/appdata/BusinessContributionType$2;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/BusinessContributionType;->REVIEW:Lcom/yelp/android/appdata/BusinessContributionType;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/appdata/BusinessContributionType;

    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_PHOTO:Lcom/yelp/android/appdata/BusinessContributionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_VIDEO:Lcom/yelp/android/appdata/BusinessContributionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->TIP:Lcom/yelp/android/appdata/BusinessContributionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->REVIEW:Lcom/yelp/android/appdata/BusinessContributionType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yelp/android/appdata/BusinessContributionType;->$VALUES:[Lcom/yelp/android/appdata/BusinessContributionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    iput p3, p0, Lcom/yelp/android/appdata/BusinessContributionType;->mTitleRes:I

    .line 122
    iput-object p4, p0, Lcom/yelp/android/appdata/BusinessContributionType;->mTypeDescriptor:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "extra.contribution."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/BusinessContributionType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/BusinessContributionType;->mParcelKey:Ljava/lang/String;

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/yelp/android/appdata/BusinessContributionType$1;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yelp/android/appdata/BusinessContributionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static getType(Landroid/content/Intent;)Lcom/yelp/android/appdata/BusinessContributionType;
    .locals 3

    .prologue
    .line 112
    const-string/jumbo v0, "extra.type"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 113
    const/4 v0, 0x0

    .line 114
    if-ltz v1, :cond_0

    invoke-static {}, Lcom/yelp/android/appdata/BusinessContributionType;->values()[Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 115
    invoke-static {}, Lcom/yelp/android/appdata/BusinessContributionType;->values()[Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v0

    aget-object v0, v0, v1

    .line 117
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/BusinessContributionType;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/BusinessContributionType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/BusinessContributionType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/yelp/android/appdata/BusinessContributionType;->$VALUES:[Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/BusinessContributionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/BusinessContributionType;

    return-object v0
.end method


# virtual methods
.method public getAddIntent(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 74
    invoke-static {p1, p2, p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/BusinessContributionType;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getContribution(Landroid/content/Intent;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yelp/android/appdata/BusinessContributionType;->mParcelKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/yelp/android/appdata/BusinessContributionType;->mTitleRes:I

    return v0
.end method

.method public isMedia()Z
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_PHOTO:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/BusinessContributionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_VIDEO:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/BusinessContributionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeToIntent(Landroid/content/Intent;Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 88
    const-string/jumbo v0, "extra.type"

    invoke-virtual {p0}, Lcom/yelp/android/appdata/BusinessContributionType;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    iget-object v0, p0, Lcom/yelp/android/appdata/BusinessContributionType;->mParcelKey:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    return-void
.end method
