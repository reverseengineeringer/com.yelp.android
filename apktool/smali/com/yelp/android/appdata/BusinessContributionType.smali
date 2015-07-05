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

.field public static final enum CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

.field private static final EXTRA_CONTRIBUTION_PREFIX:Ljava/lang/String; = "extra.contribution."

.field private static final EXTRA_TYPE:Ljava/lang/String; = "extra.type"

.field public static final enum REVIEW:Lcom/yelp/android/appdata/BusinessContributionType;

.field public static final enum TIP:Lcom/yelp/android/appdata/BusinessContributionType;


# instance fields
.field public final addIntentReturnsData:Z

.field private final parcelKey:Ljava/lang/String;

.field public final titleRes:I

.field public final typeDescriptor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 23
    new-instance v0, Lcom/yelp/android/appdata/BusinessContributionType$1;

    const-string/jumbo v1, "CHECK_IN"

    const v3, 0x7f07012c

    const-string/jumbo v4, "check-in"

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/BusinessContributionType$1;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    .line 33
    new-instance v0, Lcom/yelp/android/appdata/BusinessContributionType;

    const-string/jumbo v1, "BUSINESS_PHOTO"

    const v3, 0x7f070106

    const-string/jumbo v4, "photo"

    invoke-direct {v0, v1, v5, v3, v4}, Lcom/yelp/android/appdata/BusinessContributionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_PHOTO:Lcom/yelp/android/appdata/BusinessContributionType;

    .line 34
    new-instance v0, Lcom/yelp/android/appdata/BusinessContributionType;

    const-string/jumbo v1, "TIP"

    const v3, 0x7f0705f5

    const-string/jumbo v4, "tip"

    invoke-direct {v0, v1, v6, v3, v4}, Lcom/yelp/android/appdata/BusinessContributionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/BusinessContributionType;->TIP:Lcom/yelp/android/appdata/BusinessContributionType;

    .line 35
    new-instance v0, Lcom/yelp/android/appdata/BusinessContributionType$2;

    const-string/jumbo v1, "REVIEW"

    const v3, 0x7f07050d

    const-string/jumbo v4, "review"

    invoke-direct {v0, v1, v7, v3, v4}, Lcom/yelp/android/appdata/BusinessContributionType$2;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/BusinessContributionType;->REVIEW:Lcom/yelp/android/appdata/BusinessContributionType;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/appdata/BusinessContributionType;

    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_PHOTO:Lcom/yelp/android/appdata/BusinessContributionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->TIP:Lcom/yelp/android/appdata/BusinessContributionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->REVIEW:Lcom/yelp/android/appdata/BusinessContributionType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yelp/android/appdata/BusinessContributionType;->$VALUES:[Lcom/yelp/android/appdata/BusinessContributionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/BusinessContributionType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/yelp/android/appdata/BusinessContributionType$1;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yelp/android/appdata/BusinessContributionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 133
    iput p3, p0, Lcom/yelp/android/appdata/BusinessContributionType;->titleRes:I

    .line 134
    iput-object p4, p0, Lcom/yelp/android/appdata/BusinessContributionType;->typeDescriptor:Ljava/lang/String;

    .line 135
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

    iput-object v0, p0, Lcom/yelp/android/appdata/BusinessContributionType;->parcelKey:Ljava/lang/String;

    .line 136
    iput-boolean p5, p0, Lcom/yelp/android/appdata/BusinessContributionType;->addIntentReturnsData:Z

    .line 137
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILjava/lang/String;ZLcom/yelp/android/appdata/BusinessContributionType$1;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/yelp/android/appdata/BusinessContributionType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    return-void
.end method

.method public static getType(Landroid/content/Intent;)Lcom/yelp/android/appdata/BusinessContributionType;
    .locals 3

    .prologue
    .line 120
    const-string/jumbo v0, "extra.type"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 121
    const/4 v0, 0x0

    .line 122
    if-ltz v1, :cond_0

    invoke-static {}, Lcom/yelp/android/appdata/BusinessContributionType;->values()[Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 123
    invoke-static {}, Lcom/yelp/android/appdata/BusinessContributionType;->values()[Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v0

    aget-object v0, v0, v1

    .line 125
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/BusinessContributionType;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/BusinessContributionType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/BusinessContributionType;
    .locals 1

    .prologue
    .line 21
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
    .line 81
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
    .line 108
    iget-object v0, p0, Lcom/yelp/android/appdata/BusinessContributionType;->parcelKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public final writeToIntent(Landroid/content/Intent;Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 96
    const-string/jumbo v0, "extra.type"

    invoke-virtual {p0}, Lcom/yelp/android/appdata/BusinessContributionType;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    iget-object v0, p0, Lcom/yelp/android/appdata/BusinessContributionType;->parcelKey:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    return-void
.end method
