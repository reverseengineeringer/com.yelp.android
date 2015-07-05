.class public final Lcom/yelp/android/aq/c;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field private a:Lcom/yelp/android/aq/a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/yelp/android/aq/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/aq/a;-><init>(Lcom/yelp/android/aq/b;)V

    iput-object v0, p0, Lcom/yelp/android/aq/c;->a:Lcom/yelp/android/aq/a;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/aq/c;->b:Landroid/content/Context;

    .line 81
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/aq/a;
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/yelp/android/aq/c;->a:Lcom/yelp/android/aq/a;

    invoke-static {v0}, Lcom/yelp/android/aq/a;->a(Lcom/yelp/android/aq/a;)Lcom/path/android/jobqueue/i;

    move-result-object v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/yelp/android/aq/c;->a:Lcom/yelp/android/aq/a;

    new-instance v1, Lcom/path/android/jobqueue/f;

    invoke-direct {v1}, Lcom/path/android/jobqueue/f;-><init>()V

    invoke-static {v0, v1}, Lcom/yelp/android/aq/a;->a(Lcom/yelp/android/aq/a;Lcom/path/android/jobqueue/i;)Lcom/path/android/jobqueue/i;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/aq/c;->a:Lcom/yelp/android/aq/a;

    invoke-static {v0}, Lcom/yelp/android/aq/a;->b(Lcom/yelp/android/aq/a;)Lcom/yelp/android/au/c;

    move-result-object v0

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/yelp/android/aq/c;->a:Lcom/yelp/android/aq/a;

    new-instance v1, Lcom/yelp/android/au/d;

    iget-object v2, p0, Lcom/yelp/android/aq/c;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/yelp/android/au/d;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/yelp/android/aq/a;->a(Lcom/yelp/android/aq/a;Lcom/yelp/android/au/c;)Lcom/yelp/android/au/c;

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/aq/c;->a:Lcom/yelp/android/aq/a;

    return-object v0
.end method

.method public a(I)Lcom/yelp/android/aq/c;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yelp/android/aq/c;->a:Lcom/yelp/android/aq/a;

    invoke-static {v0, p1}, Lcom/yelp/android/aq/a;->a(Lcom/yelp/android/aq/a;I)I

    .line 100
    return-object p0
.end method

.method public a(Lcom/yelp/android/at/a;)Lcom/yelp/android/aq/c;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/yelp/android/aq/c;->a:Lcom/yelp/android/aq/a;

    invoke-static {v0, p1}, Lcom/yelp/android/aq/a;->a(Lcom/yelp/android/aq/a;Lcom/yelp/android/at/a;)Lcom/yelp/android/at/a;

    .line 177
    return-object p0
.end method

.method public b(I)Lcom/yelp/android/aq/c;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yelp/android/aq/c;->a:Lcom/yelp/android/aq/a;

    invoke-static {v0, p1}, Lcom/yelp/android/aq/a;->b(Lcom/yelp/android/aq/a;I)I

    .line 158
    return-object p0
.end method

.method public c(I)Lcom/yelp/android/aq/c;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yelp/android/aq/c;->a:Lcom/yelp/android/aq/a;

    invoke-static {v0, p1}, Lcom/yelp/android/aq/a;->c(Lcom/yelp/android/aq/a;I)I

    .line 167
    return-object p0
.end method

.method public d(I)Lcom/yelp/android/aq/c;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yelp/android/aq/c;->a:Lcom/yelp/android/aq/a;

    invoke-static {v0, p1}, Lcom/yelp/android/aq/a;->d(Lcom/yelp/android/aq/a;I)I

    .line 189
    return-object p0
.end method
