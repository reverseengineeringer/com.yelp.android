.class Lcom/yelp/android/ui/activities/settings/l;
.super Ljava/lang/Object;
.source "ChangeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/l;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/l;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Lcom/yelp/android/database/q;->g()Lcom/yelp/android/ax/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ax/a;->b()V

    .line 373
    invoke-virtual {v0}, Lcom/yelp/android/database/q;->e()Lcom/yelp/android/database/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/database/j;->c()V

    .line 374
    invoke-virtual {v0}, Lcom/yelp/android/database/q;->c()Lcom/yelp/android/database/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/database/l;->c()V

    .line 375
    invoke-virtual {v0}, Lcom/yelp/android/database/q;->f()Lcom/yelp/android/database/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/database/d;->c()V

    .line 376
    invoke-virtual {v0}, Lcom/yelp/android/database/q;->b()Lcom/yelp/android/database/savedsearch/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/savedsearch/c;->b()V

    .line 377
    return-void
.end method
