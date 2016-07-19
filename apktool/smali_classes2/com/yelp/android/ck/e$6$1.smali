.class Lcom/yelp/android/ck/e$6$1;
.super Ljava/lang/Object;
.source "OnLineSettingChange.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ck/e$6;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ck/e$6;


# direct methods
.method constructor <init>(Lcom/yelp/android/ck/e$6;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/yelp/android/ck/e$6$1;->a:Lcom/yelp/android/ck/e$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/yelp/android/ck/e$6$1;->a:Lcom/yelp/android/ck/e$6;

    iget-object v0, v0, Lcom/yelp/android/ck/e$6;->a:Lcom/yelp/android/ck/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ck/e;->a(Lcom/yelp/android/ck/e;Z)V

    .line 194
    return-void
.end method
