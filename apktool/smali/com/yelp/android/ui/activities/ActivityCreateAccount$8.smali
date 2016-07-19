.class Lcom/yelp/android/ui/activities/ActivityCreateAccount$8;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Ljp/line/android/sdk/login/LineLoginFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 915
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$8;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$8;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->l(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    .line 919
    return-void
.end method
