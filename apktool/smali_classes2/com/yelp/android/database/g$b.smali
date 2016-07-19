.class Lcom/yelp/android/database/g$b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Database.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/database/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field public static final a:[Lcom/yelp/android/database/i;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 184
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/yelp/android/database/i;

    const/4 v1, 0x0

    invoke-static {}, Lcom/yelp/android/database/a;->a()Lcom/yelp/android/database/i;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcom/yelp/android/database/d;->a()Lcom/yelp/android/database/i;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {}, Lcom/yelp/android/database/b;->d()Lcom/yelp/android/database/i;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {}, Lcom/yelp/android/ca/a;->d()Lcom/yelp/android/database/i;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {}, Lcom/yelp/android/cc/a;->a()Lcom/yelp/android/database/i;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {}, Lcom/yelp/android/cc/b;->a()Lcom/yelp/android/database/i;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {}, Lcom/yelp/android/cc/c;->a()Lcom/yelp/android/database/i;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {}, Lcom/yelp/android/cb/a;->a()Lcom/yelp/android/database/i;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/yelp/android/cd/c;

    invoke-direct {v2}, Lcom/yelp/android/cd/c;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/yelp/android/cd/b;

    invoke-direct {v2}, Lcom/yelp/android/cd/b;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/yelp/android/cd/a;

    invoke-direct {v2}, Lcom/yelp/android/cd/a;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/yelp/android/database/j;

    invoke-direct {v2}, Lcom/yelp/android/database/j;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/database/g$b;->a:[Lcom/yelp/android/database/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 200
    const/16 v0, 0x11

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/database/g$b;-><init>(Landroid/content/Context;I)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 204
    const-string/jumbo v0, "yelp"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 205
    iput p2, p0, Lcom/yelp/android/database/g$b;->b:I

    .line 206
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 210
    sget-object v1, Lcom/yelp/android/database/g$b;->a:[Lcom/yelp/android/database/i;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 211
    iget v4, p0, Lcom/yelp/android/database/g$b;->b:I

    invoke-virtual {v3, v4}, Lcom/yelp/android/database/i;->b(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 212
    invoke-virtual {v3}, Lcom/yelp/android/database/i;->a()Lcom/yelp/android/database/m;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/yelp/android/database/m;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 210
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6

    .prologue
    .line 219
    sget-object v1, Lcom/yelp/android/database/g$b;->a:[Lcom/yelp/android/database/i;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 220
    invoke-virtual {v3}, Lcom/yelp/android/database/i;->a()Lcom/yelp/android/database/m;

    move-result-object v4

    .line 222
    invoke-virtual {v3, p2}, Lcom/yelp/android/database/i;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 223
    invoke-virtual {v4, p1}, Lcom/yelp/android/database/m;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 219
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {v3, p2}, Lcom/yelp/android/database/i;->d(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 225
    invoke-virtual {v3, p2, p3, p1}, Lcom/yelp/android/database/i;->a(IILandroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 226
    :cond_2
    invoke-virtual {v3, p2}, Lcom/yelp/android/database/i;->c(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    const-string/jumbo v3, "DROP TABLE IF EXISTS "

    .line 228
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/yelp/android/database/m;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v4, p1}, Lcom/yelp/android/database/m;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 232
    :cond_3
    return-void
.end method
