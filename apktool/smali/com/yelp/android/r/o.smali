.class Lcom/yelp/android/r/o;
.super Ljava/lang/Object;
.source "MediaStoreThumbFetcher.java"


# static fields
.field private static final a:Lcom/yelp/android/r/l;


# instance fields
.field private final b:Lcom/yelp/android/r/l;

.field private c:Lcom/yelp/android/r/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/yelp/android/r/l;

    invoke-direct {v0}, Lcom/yelp/android/r/l;-><init>()V

    sput-object v0, Lcom/yelp/android/r/o;->a:Lcom/yelp/android/r/l;

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/r/l;Lcom/yelp/android/r/n;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/yelp/android/r/o;->b:Lcom/yelp/android/r/l;

    .line 128
    iput-object p2, p0, Lcom/yelp/android/r/o;->c:Lcom/yelp/android/r/n;

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/r/n;)V
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/yelp/android/r/o;->a:Lcom/yelp/android/r/l;

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/r/o;-><init>(Lcom/yelp/android/r/l;Lcom/yelp/android/r/n;)V

    .line 124
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 132
    .line 135
    iget-object v1, p0, Lcom/yelp/android/r/o;->c:Lcom/yelp/android/r/n;

    invoke-interface {v1, p1, p2}, Lcom/yelp/android/r/n;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    .line 137
    if-eqz v2, :cond_3

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 140
    iget-object v3, p0, Lcom/yelp/android/r/o;->b:Lcom/yelp/android/r/l;

    invoke-virtual {v3, v1}, Lcom/yelp/android/r/l;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 141
    iget-object v3, p0, Lcom/yelp/android/r/o;->b:Lcom/yelp/android/r/l;

    invoke-virtual {v3, v1}, Lcom/yelp/android/r/l;->a(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/yelp/android/r/o;->b:Lcom/yelp/android/r/l;

    invoke-virtual {v3, v1}, Lcom/yelp/android/r/l;->b(Ljava/io/File;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 142
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 147
    :goto_0
    if-eqz v2, :cond_0

    .line 148
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_0
    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 154
    :cond_1
    return-object v0

    .line 147
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 148
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method
