.class Lcom/yelp/android/ui/activities/ax;
.super Ljava/lang/Object;
.source "ActivityConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/yelp/android/ui/activities/ActivityConfig;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityConfig;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ax;->b:Lcom/yelp/android/ui/activities/ActivityConfig;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/ax;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ax;->a:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 171
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 172
    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v2, "sender"

    const-string/jumbo v3, "Push test"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v0, Lcom/yelp/android/services/push/p;

    invoke-direct {v0, v1}, Lcom/yelp/android/services/push/p;-><init>(Landroid/os/Bundle;)V

    .line 177
    new-instance v1, Lcom/yelp/android/services/push/Notifier;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ax;->b:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/ActivityConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yelp/android/services/push/Notifier;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-virtual {v1, v0}, Lcom/yelp/android/services/push/Notifier;->a(Lcom/yelp/android/services/push/p;)V

    .line 179
    return-void
.end method
