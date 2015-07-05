.class Lcom/yelp/android/debug/c;
.super Ljava/lang/Object;
.source "FreezerDebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Request:",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest",
        "<**TResult;>;Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/debug/FreezerDebugActivity;

.field private b:Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequest;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/TextView;

.field private final e:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/debug/FreezerDebugActivity;Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TRequest;)V"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/yelp/android/debug/FreezerDebugActivity;->b(Lcom/yelp/android/debug/FreezerDebugActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/debug/c;-><init>(Lcom/yelp/android/debug/FreezerDebugActivity;Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/yelp/android/debug/FreezerDebugActivity;->a(Lcom/yelp/android/debug/FreezerDebugActivity;I)I

    .line 141
    iget-object v0, p0, Lcom/yelp/android/debug/c;->e:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p3, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 142
    iput-object p3, p0, Lcom/yelp/android/debug/c;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/debug/FreezerDebugActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 145
    iput-object p1, p0, Lcom/yelp/android/debug/c;->a:Lcom/yelp/android/debug/FreezerDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Lcom/yelp/android/debug/d;

    invoke-direct {v0, p0}, Lcom/yelp/android/debug/d;-><init>(Lcom/yelp/android/debug/c;)V

    iput-object v0, p0, Lcom/yelp/android/debug/c;->e:Lcom/yelp/android/appdata/webrequests/m;

    .line 146
    iput-object p3, p0, Lcom/yelp/android/debug/c;->c:Ljava/lang/String;

    .line 147
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/debug/c;->d:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcom/yelp/android/debug/c;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yelp/android/debug/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-static {p1}, Lcom/yelp/android/debug/FreezerDebugActivity;->c(Lcom/yelp/android/debug/FreezerDebugActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/debug/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/debug/c;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/yelp/android/debug/c;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/debug/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yelp/android/debug/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/debug/c;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yelp/android/debug/c;->d:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/yelp/android/debug/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/yelp/android/debug/FreezerDebugActivity;)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yelp/android/debug/c;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/debug/c;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {p1, v0, v1}, Lcom/yelp/android/debug/FreezerDebugActivity;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 162
    return-void
.end method

.method public b(Lcom/yelp/android/debug/FreezerDebugActivity;)V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yelp/android/debug/c;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/debug/c;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    iget-object v2, p0, Lcom/yelp/android/debug/c;->e:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p1, v0, v1, v2}, Lcom/yelp/android/debug/FreezerDebugActivity;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/debug/c;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 166
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yelp/android/debug/c;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/debug/c;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
