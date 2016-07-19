.class Lcom/yelp/android/ck/e$4$1;
.super Ljava/lang/Object;
.source "OnLineSettingChange.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ck/e$4;->a(Ljp/line/android/sdk/login/LineLoginFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ck/e$4;


# direct methods
.method constructor <init>(Lcom/yelp/android/ck/e$4;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/yelp/android/ck/e$4$1;->a:Lcom/yelp/android/ck/e$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yelp/android/ck/e$4$1;->a:Lcom/yelp/android/ck/e$4;

    iget-object v0, v0, Lcom/yelp/android/ck/e$4;->a:Lcom/yelp/android/ck/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ck/e;->a(Lcom/yelp/android/ck/e;Z)V

    .line 142
    return-void
.end method
