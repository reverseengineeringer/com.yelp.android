.class public Lcom/path/android/jobqueue/persistentQueue/sqlite/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbOpenHelper.java"


# static fields
.field static final a:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

.field static final b:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

.field static final c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

.field static final d:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

.field static final e:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

.field static final f:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

.field static final g:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

.field static final h:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

.field static final i:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

.field static final j:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

.field static final k:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

.field static final l:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 14
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "integer"

    invoke-direct {v0, v1, v2, v4}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    .line 15
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    const-string/jumbo v1, "priority"

    const-string/jumbo v2, "integer"

    invoke-direct {v0, v1, v2, v6}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->b:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    .line 16
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    const-string/jumbo v1, "group_id"

    const-string/jumbo v2, "text"

    invoke-direct {v0, v1, v2, v7}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    .line 17
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    const-string/jumbo v1, "run_count"

    const-string/jumbo v2, "integer"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->d:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    .line 18
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    const-string/jumbo v1, "base_job"

    const-string/jumbo v2, "byte"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->e:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    .line 19
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    const-string/jumbo v1, "created_ns"

    const-string/jumbo v2, "long"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->f:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    .line 20
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    const-string/jumbo v1, "delay_until_ns"

    const-string/jumbo v2, "long"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->g:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    .line 21
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    const-string/jumbo v1, "running_session_id"

    const-string/jumbo v2, "long"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->h:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    .line 22
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    const-string/jumbo v1, "requires_network"

    const-string/jumbo v2, "integer"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->i:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    .line 23
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "integer"

    invoke-direct {v0, v1, v2, v4}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->j:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    .line 24
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    const-string/jumbo v1, "job_id"

    const-string/jumbo v2, "integer"

    new-instance v3, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$a;

    const-string/jumbo v4, "job_holder"

    sget-object v5, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget-object v5, v5, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$a;)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->k:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    .line 25
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    const-string/jumbo v1, "tag_name"

    const-string/jumbo v2, "text"

    invoke-direct {v0, v1, v2, v7}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->l:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 34
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 38
    const-string/jumbo v0, "job_holder"

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    sget-object v3, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->b:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    aput-object v3, v2, v5

    sget-object v3, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    aput-object v3, v2, v6

    sget-object v3, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->d:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    aput-object v3, v2, v7

    const/4 v3, 0x3

    sget-object v4, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->e:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->f:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->g:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->h:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->i:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->a(Ljava/lang/String;Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;[Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v0, "job_holder_tags"

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->j:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    new-array v2, v7, [Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    sget-object v3, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->k:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    aput-object v3, v2, v5

    sget-object v3, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->l:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->a(Ljava/lang/String;Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;[Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS TAG_NAME_INDEX ON job_holder_tags("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->l:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget-object v1, v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "job_holder"

    invoke-static {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v0, "job_holder_tags"

    invoke-static {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v0, "DROP INDEX IF EXISTS TAG_NAME_INDEX"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 67
    return-void
.end method
