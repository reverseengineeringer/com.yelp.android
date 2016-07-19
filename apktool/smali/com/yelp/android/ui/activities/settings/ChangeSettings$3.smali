.class Lcom/yelp/android/ui/activities/settings/ChangeSettings$3;
.super Ljava/lang/Object;
.source "ChangeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/settings/ChangeSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$3;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$3;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Lcom/yelp/android/database/g;->e()Lcom/yelp/android/ca/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ca/a;->b()V

    .line 393
    invoke-virtual {v0}, Lcom/yelp/android/database/g;->c()Lcom/yelp/android/database/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/database/c;->c()V

    .line 394
    invoke-virtual {v0}, Lcom/yelp/android/database/g;->b()Lcom/yelp/android/database/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/database/d;->c()V

    .line 395
    invoke-virtual {v0}, Lcom/yelp/android/database/g;->d()Lcom/yelp/android/database/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/b;->c()V

    .line 396
    return-void
.end method
