.class public abstract enum Lcom/yelp/android/database/ColumnType;
.super Ljava/lang/Enum;
.source "ColumnType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/database/ColumnType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/database/ColumnType;

.field public static final enum BIGINT:Lcom/yelp/android/database/ColumnType;

.field public static final enum BLOB:Lcom/yelp/android/database/ColumnType;

.field public static final enum DOUBLE:Lcom/yelp/android/database/ColumnType;

.field public static final enum FLOAT:Lcom/yelp/android/database/ColumnType;

.field public static final enum INTEGER:Lcom/yelp/android/database/ColumnType;

.field public static final enum SMALLINT:Lcom/yelp/android/database/ColumnType;

.field public static final enum TEXT:Lcom/yelp/android/database/ColumnType;

.field public static final enum TINYINT:Lcom/yelp/android/database/ColumnType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/yelp/android/database/ColumnType$1;

    const-string/jumbo v1, "BLOB"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/database/ColumnType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/database/ColumnType;->BLOB:Lcom/yelp/android/database/ColumnType;

    .line 14
    new-instance v0, Lcom/yelp/android/database/ColumnType$2;

    const-string/jumbo v1, "TEXT"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/database/ColumnType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/database/ColumnType;->TEXT:Lcom/yelp/android/database/ColumnType;

    .line 21
    new-instance v0, Lcom/yelp/android/database/ColumnType$3;

    const-string/jumbo v1, "BIGINT"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/database/ColumnType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/database/ColumnType;->BIGINT:Lcom/yelp/android/database/ColumnType;

    .line 29
    new-instance v0, Lcom/yelp/android/database/ColumnType$4;

    const-string/jumbo v1, "INTEGER"

    invoke-direct {v0, v1, v6}, Lcom/yelp/android/database/ColumnType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/database/ColumnType;->INTEGER:Lcom/yelp/android/database/ColumnType;

    .line 36
    new-instance v0, Lcom/yelp/android/database/ColumnType$5;

    const-string/jumbo v1, "SMALLINT"

    invoke-direct {v0, v1, v7}, Lcom/yelp/android/database/ColumnType$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/database/ColumnType;->SMALLINT:Lcom/yelp/android/database/ColumnType;

    .line 43
    new-instance v0, Lcom/yelp/android/database/ColumnType$6;

    const-string/jumbo v1, "TINYINT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/database/ColumnType$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/database/ColumnType;->TINYINT:Lcom/yelp/android/database/ColumnType;

    .line 50
    new-instance v0, Lcom/yelp/android/database/ColumnType$7;

    const-string/jumbo v1, "DOUBLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/database/ColumnType$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/database/ColumnType;->DOUBLE:Lcom/yelp/android/database/ColumnType;

    .line 57
    new-instance v0, Lcom/yelp/android/database/ColumnType$8;

    const-string/jumbo v1, "FLOAT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/database/ColumnType$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/database/ColumnType;->FLOAT:Lcom/yelp/android/database/ColumnType;

    .line 6
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/yelp/android/database/ColumnType;

    sget-object v1, Lcom/yelp/android/database/ColumnType;->BLOB:Lcom/yelp/android/database/ColumnType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/database/ColumnType;->TEXT:Lcom/yelp/android/database/ColumnType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/database/ColumnType;->BIGINT:Lcom/yelp/android/database/ColumnType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/database/ColumnType;->INTEGER:Lcom/yelp/android/database/ColumnType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/database/ColumnType;->SMALLINT:Lcom/yelp/android/database/ColumnType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/database/ColumnType;->TINYINT:Lcom/yelp/android/database/ColumnType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/database/ColumnType;->DOUBLE:Lcom/yelp/android/database/ColumnType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/database/ColumnType;->FLOAT:Lcom/yelp/android/database/ColumnType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/database/ColumnType;->$VALUES:[Lcom/yelp/android/database/ColumnType;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/yelp/android/database/ColumnType$1;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/database/ColumnType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/database/ColumnType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/yelp/android/database/ColumnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/database/ColumnType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/database/ColumnType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/yelp/android/database/ColumnType;->$VALUES:[Lcom/yelp/android/database/ColumnType;

    invoke-virtual {v0}, [Lcom/yelp/android/database/ColumnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/database/ColumnType;

    return-object v0
.end method


# virtual methods
.method public getSQLRepresentation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/yelp/android/database/ColumnType;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract writeContentValues(Landroid/database/Cursor;Ljava/lang/String;ILandroid/content/ContentValues;)V
.end method
