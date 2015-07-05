.class public Lcom/path/android/jobqueue/persistentQueue/sqlite/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbOpenHelper.java"


# static fields
.field static final a:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

.field static final b:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

.field static final c:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

.field static final d:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

.field static final e:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

.field static final f:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

.field static final g:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

.field static final h:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

.field static final i:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 13
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "integer"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    .line 14
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    const-string/jumbo v1, "priority"

    const-string/jumbo v2, "integer"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->b:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    .line 15
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    const-string/jumbo v1, "group_id"

    const-string/jumbo v2, "text"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    .line 16
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    const-string/jumbo v1, "run_count"

    const-string/jumbo v2, "integer"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->d:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    .line 17
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    const-string/jumbo v1, "base_job"

    const-string/jumbo v2, "byte"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->e:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    .line 18
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    const-string/jumbo v1, "created_ns"

    const-string/jumbo v2, "long"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->f:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    .line 19
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    const-string/jumbo v1, "delay_until_ns"

    const-string/jumbo v2, "long"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->g:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    .line 20
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    const-string/jumbo v1, "running_session_id"

    const-string/jumbo v2, "long"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->h:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    .line 21
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    const-string/jumbo v1, "requires_network"

    const-string/jumbo v2, "integer"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->i:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 31
    const-string/jumbo v0, "job_holder"

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    const/4 v3, 0x0

    sget-object v4, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->b:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->d:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->e:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->f:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->g:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->h:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->i:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->a(Ljava/lang/String;Lcom/path/android/jobqueue/persistentQueue/sqlite/c;[Lcom/path/android/jobqueue/persistentQueue/sqlite/c;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "job_holder"

    invoke-static {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 49
    return-void
.end method
