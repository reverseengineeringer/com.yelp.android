.class public Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;
.super Ljava/lang/Object;
.source "SqlHelper.java"


# instance fields
.field a:Ljava/lang/String;

.field final b:Landroid/database/sqlite/SQLiteDatabase;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:I

.field final f:J

.field private g:Landroid/database/sqlite/SQLiteStatement;

.field private h:Landroid/database/sqlite/SQLiteStatement;

.field private i:Landroid/database/sqlite/SQLiteStatement;

.field private j:Landroid/database/sqlite/SQLiteStatement;

.field private k:Landroid/database/sqlite/SQLiteStatement;

.field private l:Landroid/database/sqlite/SQLiteStatement;

.field private m:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    iput-object p2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->c:Ljava/lang/String;

    .line 32
    iput p4, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->e:I

    .line 33
    iput-object p3, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->d:Ljava/lang/String;

    .line 34
    iput-wide p5, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->f:J

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v1, v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->a:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;Lcom/path/android/jobqueue/persistentQueue/sqlite/c;[Lcom/path/android/jobqueue/persistentQueue/sqlite/c;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "CREATE TABLE "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v0, p1, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v0, p1, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v0, "  primary key autoincrement "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    array-length v3, p2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p2, v0

    .line 45
    const-string/jumbo v5, ", `"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "` "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->b:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    const-string/jumbo v0, " );"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yelp/android/at/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->g:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "INSERT INTO "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    const-string/jumbo v0, " VALUES ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->e:I

    if-ge v0, v2, :cond_1

    .line 61
    if-eqz v0, :cond_0

    .line 62
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_0
    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    const-string/jumbo v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->g:Landroid/database/sqlite/SQLiteStatement;

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->g:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/Integer;[Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "SELECT * FROM "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    if-eqz p1, :cond_0

    .line 143
    const-string/jumbo v0, " WHERE "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_0
    const/4 v0, 0x1

    .line 146
    array-length v4, p3

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, p3, v0

    .line 147
    if-eqz v2, :cond_1

    .line 148
    const-string/jumbo v2, " ORDER BY "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :goto_1
    iget-object v2, v5, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v2, v2, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v5, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;->b:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    .line 150
    :cond_1
    const-string/jumbo v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 155
    :cond_2
    if-eqz p2, :cond_3

    .line 156
    const-string/jumbo v0, " LIMIT "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 5

    .prologue
    .line 171
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->b:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UPDATE job_holder SET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->g:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v2, v2, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public b()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->k:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->b:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELECT COUNT(*) FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->h:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v2, v2, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " != ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->k:Landroid/database/sqlite/SQLiteStatement;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->k:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public c()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->h:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "INSERT OR REPLACE INTO "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 83
    const-string/jumbo v0, " VALUES ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->e:I

    if-ge v0, v2, :cond_1

    .line 85
    if-eqz v0, :cond_0

    .line 86
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_0
    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_1
    const-string/jumbo v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->h:Landroid/database/sqlite/SQLiteStatement;

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->h:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public d()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->i:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->b:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DELETE FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->i:Landroid/database/sqlite/SQLiteStatement;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->i:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public e()Landroid/database/sqlite/SQLiteStatement;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->j:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->d:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v1, v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = ? , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->h:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v1, v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->j:Landroid/database/sqlite/SQLiteStatement;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->j:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public f()Landroid/database/sqlite/SQLiteStatement;
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->l:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->g:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v1, v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->h:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v1, v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->g:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v1, v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " LIMIT 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->l:Landroid/database/sqlite/SQLiteStatement;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->l:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public g()Landroid/database/sqlite/SQLiteStatement;
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->m:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->g:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v1, v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->h:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v1, v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->i:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v1, v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " != 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->g:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v1, v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " LIMIT 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->m:Landroid/database/sqlite/SQLiteStatement;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->m:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method
