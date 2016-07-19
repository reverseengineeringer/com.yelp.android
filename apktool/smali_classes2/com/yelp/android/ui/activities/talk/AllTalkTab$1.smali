.class Lcom/yelp/android/ui/activities/talk/AllTalkTab$1;
.super Ljava/lang/Object;
.source "AllTalkTab.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/PanelError$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/talk/AllTalkTab;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/AllTalkTab;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab$1;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public q_()V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab$1;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0301d5

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab$1;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    const v3, 0x7f070557

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab$1;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    const/16 v2, 0x425

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->startActivityForResult(Landroid/content/Intent;I)V

    .line 134
    return-void
.end method
