.class Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$2;
.super Ljava/lang/Object;
.source "MessagingActionsHelper.java"

# interfaces
.implements Lcom/yelp/android/ui/dialogs/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$2;->a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$2;->a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;->a()V

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$2;->a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->c(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$2;->a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->b(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$2;->a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V

    .line 174
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->MessagingConversationDelete:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 175
    return-void
.end method
