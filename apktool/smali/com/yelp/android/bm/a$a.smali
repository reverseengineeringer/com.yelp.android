.class public final Lcom/yelp/android/bm/a$a;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/bm/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/yelp/android/bm/a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/yelp/android/bm/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/bm/a;-><init>(Lcom/yelp/android/bm/a$1;)V

    iput-object v0, p0, Lcom/yelp/android/bm/a$a;->a:Lcom/yelp/android/bm/a;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/bm/a$a;->b:Landroid/content/Context;

    .line 86
    return-void
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/bm/a$a;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yelp/android/bm/a$a;->a:Lcom/yelp/android/bm/a;

    invoke-static {v0, p1}, Lcom/yelp/android/bm/a;->a(Lcom/yelp/android/bm/a;I)I

    .line 105
    return-object p0
.end method

.method public a(Lcom/yelp/android/bp/a;)Lcom/yelp/android/bm/a$a;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/yelp/android/bm/a$a;->a:Lcom/yelp/android/bm/a;

    invoke-static {v0, p1}, Lcom/yelp/android/bm/a;->a(Lcom/yelp/android/bm/a;Lcom/yelp/android/bp/a;)Lcom/yelp/android/bp/a;

    .line 182
    return-object p0
.end method

.method public a()Lcom/yelp/android/bm/a;
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/yelp/android/bm/a$a;->a:Lcom/yelp/android/bm/a;

    invoke-static {v0}, Lcom/yelp/android/bm/a;->a(Lcom/yelp/android/bm/a;)Lcom/path/android/jobqueue/e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/yelp/android/bm/a$a;->a:Lcom/yelp/android/bm/a;

    new-instance v1, Lcom/path/android/jobqueue/b$a;

    invoke-direct {v1}, Lcom/path/android/jobqueue/b$a;-><init>()V

    invoke-static {v0, v1}, Lcom/yelp/android/bm/a;->a(Lcom/yelp/android/bm/a;Lcom/path/android/jobqueue/e;)Lcom/path/android/jobqueue/e;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/bm/a$a;->a:Lcom/yelp/android/bm/a;

    invoke-static {v0}, Lcom/yelp/android/bm/a;->b(Lcom/yelp/android/bm/a;)Lcom/yelp/android/bq/b;

    move-result-object v0

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/yelp/android/bm/a$a;->a:Lcom/yelp/android/bm/a;

    new-instance v1, Lcom/yelp/android/bq/c;

    iget-object v2, p0, Lcom/yelp/android/bm/a$a;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/yelp/android/bq/c;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/yelp/android/bm/a;->a(Lcom/yelp/android/bm/a;Lcom/yelp/android/bq/b;)Lcom/yelp/android/bq/b;

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/bm/a$a;->a:Lcom/yelp/android/bm/a;

    return-object v0
.end method

.method public b(I)Lcom/yelp/android/bm/a$a;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/yelp/android/bm/a$a;->a:Lcom/yelp/android/bm/a;

    invoke-static {v0, p1}, Lcom/yelp/android/bm/a;->b(Lcom/yelp/android/bm/a;I)I

    .line 163
    return-object p0
.end method

.method public c(I)Lcom/yelp/android/bm/a$a;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yelp/android/bm/a$a;->a:Lcom/yelp/android/bm/a;

    invoke-static {v0, p1}, Lcom/yelp/android/bm/a;->c(Lcom/yelp/android/bm/a;I)I

    .line 172
    return-object p0
.end method

.method public d(I)Lcom/yelp/android/bm/a$a;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/yelp/android/bm/a$a;->a:Lcom/yelp/android/bm/a;

    invoke-static {v0, p1}, Lcom/yelp/android/bm/a;->d(Lcom/yelp/android/bm/a;I)I

    .line 194
    return-object p0
.end method
