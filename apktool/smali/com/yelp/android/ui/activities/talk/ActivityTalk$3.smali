.class Lcom/yelp/android/ui/activities/talk/ActivityTalk$3;
.super Ljava/lang/Object;
.source "ActivityTalk.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/talk/ActivityTalk;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk$3;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk$3;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->d(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)V

    .line 251
    return-void
.end method
