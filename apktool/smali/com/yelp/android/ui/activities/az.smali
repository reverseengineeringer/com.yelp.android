.class Lcom/yelp/android/ui/activities/az;
.super Ljava/lang/Object;
.source "ActivityConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityConfig;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/yelp/android/ui/activities/az;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    sget-object v1, Lcom/yelp/android/debug/Debug;->c:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 215
    iget-object v1, p0, Lcom/yelp/android/ui/activities/az;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->startActivity(Landroid/content/Intent;)V

    .line 216
    return-void
.end method
