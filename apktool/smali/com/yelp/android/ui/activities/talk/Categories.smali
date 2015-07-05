.class public final enum Lcom/yelp/android/ui/activities/talk/Categories;
.super Ljava/lang/Enum;
.source "Categories.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/talk/Categories;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/talk/Categories;

.field public static final enum ENTERTAINMENT_POP_CULTURE:Lcom/yelp/android/ui/activities/talk/Categories;

.field public static final enum EVENTS:Lcom/yelp/android/ui/activities/talk/Categories;

.field public static final enum FAMILY_PARENTING:Lcom/yelp/android/ui/activities/talk/Categories;

.field public static final enum FOOD:Lcom/yelp/android/ui/activities/talk/Categories;

.field public static final enum HUMOR_OFFBEAT:Lcom/yelp/android/ui/activities/talk/Categories;

.field public static final enum LOCAL_QUESTIONS_ANSWERS:Lcom/yelp/android/ui/activities/talk/Categories;

.field public static final enum NEWS_POLITICS:Lcom/yelp/android/ui/activities/talk/Categories;

.field public static final enum OTHER:Lcom/yelp/android/ui/activities/talk/Categories;

.field public static final enum RELATIONSHIPS_DATING:Lcom/yelp/android/ui/activities/talk/Categories;

.field public static final enum SHOPPING:Lcom/yelp/android/ui/activities/talk/Categories;

.field public static final enum SITE_QUESTIONS_UPDATES:Lcom/yelp/android/ui/activities/talk/Categories;

.field public static final enum SPORTS:Lcom/yelp/android/ui/activities/talk/Categories;

.field public static final enum TRAVEL:Lcom/yelp/android/ui/activities/talk/Categories;

.field public static final enum YELPER_SHOUTOUTS:Lcom/yelp/android/ui/activities/talk/Categories;


# instance fields
.field private id:I

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 7
    new-instance v0, Lcom/yelp/android/ui/activities/talk/Categories;

    const-string/jumbo v1, "LOCAL_QUESTIONS_ANSWERS"

    const/4 v2, 0x0

    const v3, 0x7f0705ac

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/yelp/android/ui/activities/talk/Categories;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/talk/Categories;->LOCAL_QUESTIONS_ANSWERS:Lcom/yelp/android/ui/activities/talk/Categories;

    .line 8
    new-instance v0, Lcom/yelp/android/ui/activities/talk/Categories;

    const-string/jumbo v1, "EVENTS"

    const v2, 0x7f0705b2

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/yelp/android/ui/activities/talk/Categories;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/talk/Categories;->EVENTS:Lcom/yelp/android/ui/activities/talk/Categories;

    .line 9
    new-instance v0, Lcom/yelp/android/ui/activities/talk/Categories;

    const-string/jumbo v1, "HUMOR_OFFBEAT"

    const v2, 0x7f0705b3

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/yelp/android/ui/activities/talk/Categories;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/talk/Categories;->HUMOR_OFFBEAT:Lcom/yelp/android/ui/activities/talk/Categories;

    .line 10
    new-instance v0, Lcom/yelp/android/ui/activities/talk/Categories;

    const-string/jumbo v1, "ENTERTAINMENT_POP_CULTURE"

    const v2, 0x7f0705b4

    invoke-direct {v0, v1, v7, v2, v8}, Lcom/yelp/android/ui/activities/talk/Categories;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/talk/Categories;->ENTERTAINMENT_POP_CULTURE:Lcom/yelp/android/ui/activities/talk/Categories;

    .line 11
    new-instance v0, Lcom/yelp/android/ui/activities/talk/Categories;

    const-string/jumbo v1, "SPORTS"

    const v2, 0x7f0705b5

    invoke-direct {v0, v1, v8, v2, v9}, Lcom/yelp/android/ui/activities/talk/Categories;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/talk/Categories;->SPORTS:Lcom/yelp/android/ui/activities/talk/Categories;

    .line 12
    new-instance v0, Lcom/yelp/android/ui/activities/talk/Categories;

    const-string/jumbo v1, "NEWS_POLITICS"

    const v2, 0x7f0705b6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/yelp/android/ui/activities/talk/Categories;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/talk/Categories;->NEWS_POLITICS:Lcom/yelp/android/ui/activities/talk/Categories;

    .line 13
    new-instance v0, Lcom/yelp/android/ui/activities/talk/Categories;

    const-string/jumbo v1, "YELPER_SHOUTOUTS"

    const/4 v2, 0x6

    const v3, 0x7f0705b7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/talk/Categories;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/talk/Categories;->YELPER_SHOUTOUTS:Lcom/yelp/android/ui/activities/talk/Categories;

    .line 14
    new-instance v0, Lcom/yelp/android/ui/activities/talk/Categories;

    const-string/jumbo v1, "SITE_QUESTIONS_UPDATES"

    const/4 v2, 0x7

    const v3, 0x7f0705b8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/talk/Categories;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/talk/Categories;->SITE_QUESTIONS_UPDATES:Lcom/yelp/android/ui/activities/talk/Categories;

    .line 15
    new-instance v0, Lcom/yelp/android/ui/activities/talk/Categories;

    const-string/jumbo v1, "OTHER"

    const/16 v2, 0x8

    const v3, 0x7f0705b9

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/talk/Categories;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/talk/Categories;->OTHER:Lcom/yelp/android/ui/activities/talk/Categories;

    .line 16
    new-instance v0, Lcom/yelp/android/ui/activities/talk/Categories;

    const-string/jumbo v1, "FOOD"

    const/16 v2, 0x9

    const v3, 0x7f0705ad

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/talk/Categories;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/talk/Categories;->FOOD:Lcom/yelp/android/ui/activities/talk/Categories;

    .line 17
    new-instance v0, Lcom/yelp/android/ui/activities/talk/Categories;

    const-string/jumbo v1, "SHOPPING"

    const/16 v2, 0xa

    const v3, 0x7f0705ae

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/talk/Categories;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/talk/Categories;->SHOPPING:Lcom/yelp/android/ui/activities/talk/Categories;

    .line 18
    new-instance v0, Lcom/yelp/android/ui/activities/talk/Categories;

    const-string/jumbo v1, "RELATIONSHIPS_DATING"

    const/16 v2, 0xb

    const v3, 0x7f0705af

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/talk/Categories;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/talk/Categories;->RELATIONSHIPS_DATING:Lcom/yelp/android/ui/activities/talk/Categories;

    .line 19
    new-instance v0, Lcom/yelp/android/ui/activities/talk/Categories;

    const-string/jumbo v1, "TRAVEL"

    const/16 v2, 0xc

    const v3, 0x7f0705b0

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/talk/Categories;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/talk/Categories;->TRAVEL:Lcom/yelp/android/ui/activities/talk/Categories;

    .line 20
    new-instance v0, Lcom/yelp/android/ui/activities/talk/Categories;

    const-string/jumbo v1, "FAMILY_PARENTING"

    const/16 v2, 0xd

    const v3, 0x7f0705b1

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/talk/Categories;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/talk/Categories;->FAMILY_PARENTING:Lcom/yelp/android/ui/activities/talk/Categories;

    .line 6
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/yelp/android/ui/activities/talk/Categories;

    const/4 v1, 0x0

    sget-object v2, Lcom/yelp/android/ui/activities/talk/Categories;->LOCAL_QUESTIONS_ANSWERS:Lcom/yelp/android/ui/activities/talk/Categories;

    aput-object v2, v0, v1

    sget-object v1, Lcom/yelp/android/ui/activities/talk/Categories;->EVENTS:Lcom/yelp/android/ui/activities/talk/Categories;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/talk/Categories;->HUMOR_OFFBEAT:Lcom/yelp/android/ui/activities/talk/Categories;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/talk/Categories;->ENTERTAINMENT_POP_CULTURE:Lcom/yelp/android/ui/activities/talk/Categories;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/ui/activities/talk/Categories;->SPORTS:Lcom/yelp/android/ui/activities/talk/Categories;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yelp/android/ui/activities/talk/Categories;->NEWS_POLITICS:Lcom/yelp/android/ui/activities/talk/Categories;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/activities/talk/Categories;->YELPER_SHOUTOUTS:Lcom/yelp/android/ui/activities/talk/Categories;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/activities/talk/Categories;->SITE_QUESTIONS_UPDATES:Lcom/yelp/android/ui/activities/talk/Categories;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/ui/activities/talk/Categories;->OTHER:Lcom/yelp/android/ui/activities/talk/Categories;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/ui/activities/talk/Categories;->FOOD:Lcom/yelp/android/ui/activities/talk/Categories;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/ui/activities/talk/Categories;->SHOPPING:Lcom/yelp/android/ui/activities/talk/Categories;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/ui/activities/talk/Categories;->RELATIONSHIPS_DATING:Lcom/yelp/android/ui/activities/talk/Categories;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yelp/android/ui/activities/talk/Categories;->TRAVEL:Lcom/yelp/android/ui/activities/talk/Categories;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/yelp/android/ui/activities/talk/Categories;->FAMILY_PARENTING:Lcom/yelp/android/ui/activities/talk/Categories;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/talk/Categories;->$VALUES:[Lcom/yelp/android/ui/activities/talk/Categories;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/Categories;->text:Ljava/lang/String;

    .line 27
    iput p4, p0, Lcom/yelp/android/ui/activities/talk/Categories;->id:I

    .line 28
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/yelp/android/ui/activities/talk/Categories;
    .locals 5

    .prologue
    .line 39
    if-eqz p0, :cond_1

    .line 40
    invoke-static {}, Lcom/yelp/android/ui/activities/talk/Categories;->values()[Lcom/yelp/android/ui/activities/talk/Categories;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 41
    iget-object v4, v0, Lcom/yelp/android/ui/activities/talk/Categories;->text:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    :goto_1
    return-object v0

    .line 40
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/talk/Categories;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/yelp/android/ui/activities/talk/Categories;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/talk/Categories;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/talk/Categories;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/yelp/android/ui/activities/talk/Categories;->$VALUES:[Lcom/yelp/android/ui/activities/talk/Categories;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/talk/Categories;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/talk/Categories;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/yelp/android/ui/activities/talk/Categories;->id:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/Categories;->text:Ljava/lang/String;

    return-object v0
.end method
