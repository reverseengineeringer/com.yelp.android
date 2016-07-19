.class public abstract enum Lcom/yelp/android/database/ColumnModifier;
.super Ljava/lang/Enum;
.source "ColumnModifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/database/ColumnModifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/database/ColumnModifier;

.field public static final enum NONE:Lcom/yelp/android/database/ColumnModifier;

.field public static final enum NOT_NULL:Lcom/yelp/android/database/ColumnModifier;

.field public static final enum PRIMARY_KEY:Lcom/yelp/android/database/ColumnModifier;

.field public static final enum PRIMARY_KEY_AUTOINCREMENT:Lcom/yelp/android/database/ColumnModifier;

.field public static final enum PRIMARY_KEY_NOT_NULL:Lcom/yelp/android/database/ColumnModifier;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/yelp/android/database/ColumnModifier$1;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/database/ColumnModifier$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/database/ColumnModifier;->NONE:Lcom/yelp/android/database/ColumnModifier;

    .line 10
    new-instance v0, Lcom/yelp/android/database/ColumnModifier$2;

    const-string/jumbo v1, "PRIMARY_KEY"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/database/ColumnModifier$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/database/ColumnModifier;->PRIMARY_KEY:Lcom/yelp/android/database/ColumnModifier;

    .line 16
    new-instance v0, Lcom/yelp/android/database/ColumnModifier$3;

    const-string/jumbo v1, "PRIMARY_KEY_NOT_NULL"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/database/ColumnModifier$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/database/ColumnModifier;->PRIMARY_KEY_NOT_NULL:Lcom/yelp/android/database/ColumnModifier;

    .line 22
    new-instance v0, Lcom/yelp/android/database/ColumnModifier$4;

    const-string/jumbo v1, "PRIMARY_KEY_AUTOINCREMENT"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/database/ColumnModifier$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/database/ColumnModifier;->PRIMARY_KEY_AUTOINCREMENT:Lcom/yelp/android/database/ColumnModifier;

    .line 28
    new-instance v0, Lcom/yelp/android/database/ColumnModifier$5;

    const-string/jumbo v1, "NOT_NULL"

    invoke-direct {v0, v1, v6}, Lcom/yelp/android/database/ColumnModifier$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/database/ColumnModifier;->NOT_NULL:Lcom/yelp/android/database/ColumnModifier;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/database/ColumnModifier;

    sget-object v1, Lcom/yelp/android/database/ColumnModifier;->NONE:Lcom/yelp/android/database/ColumnModifier;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/database/ColumnModifier;->PRIMARY_KEY:Lcom/yelp/android/database/ColumnModifier;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/database/ColumnModifier;->PRIMARY_KEY_NOT_NULL:Lcom/yelp/android/database/ColumnModifier;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/database/ColumnModifier;->PRIMARY_KEY_AUTOINCREMENT:Lcom/yelp/android/database/ColumnModifier;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/database/ColumnModifier;->NOT_NULL:Lcom/yelp/android/database/ColumnModifier;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/database/ColumnModifier;->$VALUES:[Lcom/yelp/android/database/ColumnModifier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/yelp/android/database/ColumnModifier$1;)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/database/ColumnModifier;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/database/ColumnModifier;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/yelp/android/database/ColumnModifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/database/ColumnModifier;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/database/ColumnModifier;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/yelp/android/database/ColumnModifier;->$VALUES:[Lcom/yelp/android/database/ColumnModifier;

    invoke-virtual {v0}, [Lcom/yelp/android/database/ColumnModifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/database/ColumnModifier;

    return-object v0
.end method


# virtual methods
.method public abstract getSQLRepresentation()Ljava/lang/String;
.end method
