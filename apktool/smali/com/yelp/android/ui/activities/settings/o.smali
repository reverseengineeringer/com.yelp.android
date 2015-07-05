.class Lcom/yelp/android/ui/activities/settings/o;
.super Ljava/lang/Object;
.source "ChangeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/o;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 678
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UserLogoutCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 679
    return-void
.end method
